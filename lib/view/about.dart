import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar:AppBar(
        title: Text("About"),
        backgroundColor: Colors.blueGrey[900],
      ),
      
    );
  }
}
