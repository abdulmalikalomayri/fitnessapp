import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myflutterapp/view/calories_result.dart';

class CaloriesForm extends StatefulWidget {
  const CaloriesForm({Key? key}) : super(key: key);

  @override
  State<CaloriesForm> createState() => _CaloriesFormState();
}

class _CaloriesFormState extends State<CaloriesForm> {
  // get connection to the users table from firebase
  final CollectionReference _users = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Add Calories"),

    ),
    body: StreamBuilder(
      stream: _users.snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
        if(streamSnapshot.hasData) {
          return ListView.builder(
            itemCount: streamSnapshot.data!.docs.length,
            itemBuilder: (context, index) {
              final DocumentSnapshot documentSnapshot = streamSnapshot.data!.docs[index];
              return ListTile(
                title: Text(documentSnapshot['calorie'].toString()),
                subtitle: Text(documentSnapshot['date']),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () async {
                    await _users.doc(documentSnapshot.id).delete();
                  },
                ),
              );
            },
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      }
      
    )
  );

}