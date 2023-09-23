import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myflutterapp/bmi/bmi_screen.dart';
import 'package:myflutterapp/view/about.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

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
            // Button BMI caluclator
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => About()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey[900],
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
                    backgroundColor: Colors.blueGrey[900],
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
                    MaterialPageRoute(builder: (_) => About()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey[900],
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 80)),            
                child: const Text('Calroies Tracker',style: TextStyle(fontSize: 25, color: Colors.white),),
            ),

          ],),
            
        )
        )
    );
  }
}