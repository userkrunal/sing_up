import 'package:flutter/material.dart';

class Login_Home_Screen extends StatefulWidget {
  const Login_Home_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Home_Screen> createState() => _Login_Home_ScreenState();
}

class _Login_Home_ScreenState extends State<Login_Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("Home Screen"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text("Thank You for login",style: TextStyle(fontSize: 30)),
        ),
      ),
    ));
  }
}
