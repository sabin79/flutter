import 'package:flutter/material.dart';
import 'package:loginapp/screen/login.dart';

void main(List<String> args) {
  runApp(loginApp());
}

class loginApp extends StatefulWidget {
  const loginApp({super.key});

  @override
  State<loginApp> createState() => _loginAppState();
}

class _loginAppState extends State<loginApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "login App",
      home: loginpage(),
    );
  }
}
