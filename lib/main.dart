import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Center(
            child: const Text("أهلا بالعالم")),
      ),
      body: Container(
        child: Text('مرحبا شباب اليوم احلى سكره', style: TextStyle(color: Colors.blueAccent, fontSize: 30)),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        color: Colors.black,
        height: 300,
        width: 300



      ),

    ),
  );
  }

}