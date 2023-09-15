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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,

        children: [
          Icon(Icons.backpack),
          Icon(Icons.leaderboard),
          Icon(Icons.person),

        ]


      ),

    ),
  );
  }

}