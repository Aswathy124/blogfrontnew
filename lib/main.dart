import 'package:blog2/pages/login.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(Home());
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
