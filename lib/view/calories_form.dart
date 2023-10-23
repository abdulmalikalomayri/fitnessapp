import 'package:flutter/material.dart';
import 'package:myflutterapp/view/calories_result.dart';

class CaloriesForm extends StatefulWidget {
  const CaloriesForm({Key? key}) : super(key: key);

  @override
  State<CaloriesForm> createState() => _CaloriesFormState();
}

class _CaloriesFormState extends State<CaloriesForm> {
  final controllerCalorie = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Add Calories"),

    ),
    body: ListView(
      padding: EdgeInsets.all(16),
      children: <Widget>[
        
        const SizedBox(height: 8),
        TextField(
          keyboardType: TextInputType.number,
          controller: controllerCalorie,
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          onPressed: () {
            final calorie = int.parse(controllerCalorie.text);

            createCalorie(calorie);
          }, 
          child: Text("Add Calories")
          ),
      ]
      )
  );

  Future createCalorie(int calorie) async {
    //final docCalorie = FirebaseFirestore.instance.collection('calories').doc();

    //final json = calorie.toJson();
    //await docCalorie.set(json);
  }
}