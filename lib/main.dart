import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

void main() {
  runApp(
    MaterialApp(home: InputScreen()), // use MaterialApp
  );
}

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  Color inactiveColor = Color(0xFF24232F);
  Color activeColor = Colors.blueGrey;
  late Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("BMI"),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: (){

                },
                child: Container(
                  decoration: BoxDecoration(
                    color: selectedGender == Gender.male?activeColor:inactiveColor
                  ),
                child: Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.person,
                      color: Colors.white,
                      size: 45.0
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "male",
                      style: (TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      )),
                    )
                  ],
                ),
                ),
              ),
            ]
          )
        ]
      )
    );
  }
}