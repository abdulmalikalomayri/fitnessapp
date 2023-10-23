import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myflutterapp/bmi/bmi_screen.dart';
import 'package:myflutterapp/login_screen.dart';
import 'package:myflutterapp/view/about.dart';
import 'package:myflutterapp/view/calories_form.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    
    String? _email = _auth.currentUser!.email!;

    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.lightBlue[900],
        ),
        body: Center(
          child: Column
          (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome, $_email", style: TextStyle(fontSize: 25, color: Colors.black),),
              SizedBox(height: 10,), // this line use to create a margin between the two widgets
              // Button BMI caluclator
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => About()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(450, 60),
                      backgroundColor: Colors.lightBlue[900],
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 80)),            
                  child: const Text('Profile',style: TextStyle(fontSize: 25, color: Colors.white),),
              ),
              // add margin 
              SizedBox(height: 30),
              // Button calories tracker
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => BmiScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(450, 60),
                      backgroundColor: Colors.lightBlue[900],
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 80)),            
                  child: const Text('BMI calculator',style: TextStyle(fontSize: 25, color: Colors.white),),
              ),
              // add margin
              SizedBox(height: 30),
              // Button about us
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => CaloriesForm()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(450, 60),
                      backgroundColor: Colors.lightBlue[900],
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 80)),            
                  child: const Text('Calroies Tracker',style: TextStyle(fontSize: 25, color: Colors.white),),
              ),
              // Add margin between the two widgets
              SizedBox(height: 30),
              // Logout Button
              ElevatedButton(
                  onPressed: () {
                    // logout the current user
                    _auth.signOut();
                    
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => LoginScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(450, 60),
                      backgroundColor: Colors.lightBlue[900],
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 80)),            
                  child: const Text('Logout',style: TextStyle(fontSize: 25, color: Colors.white),),
              ),

          ],),
        ),
        );
  }
}
