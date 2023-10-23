import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State {

  final FirebaseAuth _auth =FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {

    String? _email = _auth.currentUser!.email!;

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlue[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Email: $_email", style: TextStyle(fontSize: 25, color: Colors.black),),
            SizedBox(height: 10,), // this line use to create a margin between the two widgets
            Text("Calories 2300", style: TextStyle(fontSize: 25, color: Colors.black),),
            
        ]),
        )
    );
  }
}