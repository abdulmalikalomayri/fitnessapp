import 'dart:js_interop';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myflutterapp/login_screen.dart';
import 'package:myflutterapp/view/dashboard.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key});

  // Create a state class to get a state object which will make the widget stateful
  // The state object contains the widget’s mutable state and the widget’s build() method
  // which means that the state class will give us a changeable screen!
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();

}

class _SignUpScreenState extends State<SignUpScreen> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Email field
  TextEditingController _emailController = TextEditingController();
  // Password field
  TextEditingController _passwordController = TextEditingController();

  // Email State 
  String _email = '';
  // Password State
  String _password = '';
  // handling validator for SignUp
  void _handleSignUp() async {
    try {
      // create user with email and password in firebase auth
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: _email,
        password: _password
      );
      // print in the console if the user is registred successfully!
      print("User Registered Successfully:  ${userCredential.user!.email!}");
    }
    catch(e){
      print("Registration Failed: $e");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlue[900],
      ),
      body: Center(
        // if the parent widget is const the TextFormField will not work!
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                // Email input field
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(), // add border 
                    hintText: 'Enter your email',
                  ),
                  // valudation if input is empty
                  validator: (value){
                    if(value == null || value!.isEmpty){
                      return 'Please enter your email';
                    }
                    if(value.contains('@') == false){
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                  // real time update of the variable 
                  onChanged: (value){
                    setState(() {
                      _email = value;
                    });
                  },
                ),
                // add margin between the input fields
                SizedBox(height: 20.0,),
                // Password input field
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  //keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(), // add border 
                    hintText: 'Enter your password',
                  ),
                  // valudation if input is empty
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  // real time update of the variable 
                  onChanged: (value){
                    setState(() {
                      _password = value;
                    });
                  },
                ),
                // Margin between inputs field
                SizedBox(height: 20,),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => LoginScreen()),
                     ),
                  child: Text(
                    "Already have an account? Click to Login",
                    style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue),
                  ),
                ),
                SizedBox(height: 20,),

                // Submit Button
                ElevatedButton(
                  onPressed: (){
                     if(_formKey.currentState!.validate()){
                        // if valid then call the handleSignUp function
                        _handleSignUp();
                     }
                  },
                  child: Text('Sign Up')),
              ],
            )
          )
        )
    ),
    );
  }
}