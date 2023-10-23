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
  final TextEditingController _calorieController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Add Calories"),

    ),
    body: Center(
      child: Column(
        children: [
          TextField(
            controller: _calorieController,
            decoration: InputDecoration(
              labelText: 'Calories',
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            controller: _dateController,
            decoration: InputDecoration(
              labelText: 'Date',
            ),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () async {

              final String date = _dateController.text;
              var calorieString = _calorieController.text;
              final int calorie = int.parse(calorieString);
              await _users.add({
                'date': date,
                'calorie': calorie,
              });

              Navigator.push(
              context,
                MaterialPageRoute(builder: (_) => CaloriesResult()),
              );
            }, 
            child: Text("Add Calories")
          )
          
        ],
      ),
    )
  );
}