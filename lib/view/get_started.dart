import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myflutterapp/bmi/bmi_screen.dart';
import 'package:myflutterapp/login_screen.dart';
import 'package:myflutterapp/signup_screen.dart';
import 'package:myflutterapp/view/about.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Column
          (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              
              // Login Button 
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => LoginScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(450, 60),
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 80)),            
                  child: const Text('Login',style: TextStyle(fontSize: 25, color: Colors.white),),
              ),
              // Sign Up Button
              SizedBox(height: 30),
              // Button about us
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => SignUpScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(450, 60),
                      backgroundColor: Colors.lightBlue[900],
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 80)),            
                  child: const Text('Sign up',style: TextStyle(fontSize: 25, color: Colors.white),),
              ),

          ],),
            
        )
        )
    );
  }
}