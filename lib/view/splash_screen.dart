import 'package:flutter/material.dart';
import 'package:sing_up/utils/per_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool? s;

  @override
  void initState() {
    super.initState();
    read();
  }

  Future<void> read()
  async {
    Shar_Helper shar= await Shar_Helper();
    s=await shar.status();
  }



  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4),() {
      s==false?Navigator.pushReplacementNamed(context, 'intro'):Navigator.pushReplacementNamed(context, 'sing');
    },);
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black87,
      body: Center(child: Image.asset("assets/images/p5.png")),
    ));
  }
}
