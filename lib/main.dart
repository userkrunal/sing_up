import 'package:flutter/material.dart';
import 'package:sing_up/view/home_screen.dart';
import 'package:sing_up/view/sing_in_screen.dart';
import 'package:sing_up/view/sing_up.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => HomeScreen(),
      'sing':(context) => Sing_UPScreen(),
      'home':(context) => Login_Home_Screen(),
    },
  ))
;}