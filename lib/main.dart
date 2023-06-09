import 'package:flutter/material.dart';
import 'package:sing_up/view/home_screen.dart';
import 'package:sing_up/view/introduction/view/introduction_screen.dart';
import 'package:sing_up/view/sing_in_screen.dart';
import 'package:sing_up/view/sing_up.dart';
import 'package:sing_up/view/splash_screen.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
       '/':(context) => SplashScreen(),
       'intro':(context) => IntroScreen(),
       'home1':(context) => HomeScreen(),
       'sing':(context) => Sing_UPScreen(),
       'home':(context) => Login_Home_Screen(),
    },
  ))
;}