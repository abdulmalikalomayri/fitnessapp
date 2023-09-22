import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myflutterapp/view/about.dart';

void main() {
  runApp(
    
    MaterialApp(
      home: MyApp()), // use MaterialApp
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
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
            Text("Fitness Tracker", style: TextStyle(fontSize: 50, color: Colors.black),),
            SizedBox(height: 10,), // this line use to create a margin between the two widgets 
            Text("let imporve your fitness \nby caluclate your BMI and tracking your calories", style: TextStyle(fontSize: 14, color: Colors.blueGrey[900],),),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey[900],
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 100)),
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )),
          ],)
            
        )
        )
    );
  }
}



