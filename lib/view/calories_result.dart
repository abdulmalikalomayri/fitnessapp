import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final result = ModalRoute.of(context)!.settings.arguments as double;

    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          'Result: $result',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
