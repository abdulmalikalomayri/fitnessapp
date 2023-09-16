import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

// Immutable widget 
class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

// Mutable widget
class _MyAppState extends State<MyApp> {

  int counter = 0;
  var mode = ["Easy", "Medium", "Hard", "Impossible"];

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
      
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            counter++;
          });
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text((() {
              if(counter < 5){
                return mode[0];
              } else if(counter < 10){
                return mode[1];
              } else if(counter < 15){
                return mode[2];
              } else {
                return mode[3];
              }
            })()),
            Text(
          "$counter",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),),
          ],),
          
      ),
    ),
  );
  }
}