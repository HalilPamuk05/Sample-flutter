import 'package:flutter/material.dart';
import 'package:newapp/login_page.dart';

void main(List<String> args) {
  runApp(NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
