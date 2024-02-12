import 'dart:html';

import 'package:blog2/pages/register.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";
  TextEditingController n1 = new TextEditingController();
  TextEditingController n2 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding: EdgeInsets.all(34),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 135,
              ),

              SizedBox(
                height: 15,
              ),
              Text("Login", style: TextStyle(fontSize: 40)),
              SizedBox(
                height: 15,
              ),
              TextField(
                  style: TextStyle(color: Colors.black),
                  controller: n1,
                  decoration: InputDecoration(
                    labelText: "email:",
                    labelStyle: TextStyle(color: Colors.black),
                  )
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                style: TextStyle(color: Colors.black),
                controller: n2,
                decoration: InputDecoration(
                  labelText: "password:",
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(onPressed: () {
                email=n1.text;
                password=n2.text;
                setState(() {
                  print("email"+email);
                  print("password"+password);
                });


              }, child: Text("Login")),
              SizedBox(
                height: 25,
              ),

              TextButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterPage()));
              },
                  child: Text(
                    "new user click here",
                    style: TextStyle(color: Colors.black),))
            ],
          ),
        ),
      ),
    );
  }
}
