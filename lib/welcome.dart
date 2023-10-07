import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myflutterapp/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myflutterapp/bmi/bmi_screen.dart';
import 'package:myflutterapp/view/about.dart';
class Welcome extends StatefulWidget {
  const Welcome({Key? key});

  @override
  State<Welcome> createState() => _WelcomeState();

}

class _WelcomeState extends State<Welcome> {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {

    String? _email = "_auth.currentUser!.email!";

    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlue[900], // Don't show the back button
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text("Logged in WIth: $_email?"),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){
                     _auth.signOut();
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen())
                        );
                  },
                  child: Text('Logout')),
            ],
          )
        )
      )
      );
  }
}