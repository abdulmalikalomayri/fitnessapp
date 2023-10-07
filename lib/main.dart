import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myflutterapp/login_screen.dart';
import 'package:myflutterapp/welcome.dart';
import 'firebase_options.dart';
import 'signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Ensure that Firebase is initialized
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
      );
  }
}