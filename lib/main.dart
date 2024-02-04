import 'package:flutter/material.dart';
import 'package:quespro/loginscreen.dart';
import 'package:quespro/register_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      routes: {
        '/register': (context) => Register(), // Register route
      },
    );
  }
}
