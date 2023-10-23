import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  //final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    
  //String? _email = _auth.currentUser!.email!;

    return Scaffold(
      appBar:AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.lightBlue[900],
      ),
      body: Center(
        child: Text("Profile")
      ),
    );
  }
}
