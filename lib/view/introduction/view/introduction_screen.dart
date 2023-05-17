import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sing_up/utils/per_helper.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}



class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            decoration: PageDecoration(
              imagePadding: EdgeInsets.symmetric(horizontal: 10),
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 35),
              bodyTextStyle: TextStyle(color: Colors.white, fontSize: 17),
            ),
            title: "Boost Productivity",
            body: "Boost Your Productivity",
            image: Image.asset("assets/images/p2.png",
                height: 600, width: 340, fit: BoxFit.cover),
          ),
          PageViewModel(
            decoration: PageDecoration(
              imagePadding: EdgeInsets.all(30),
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 35),
              bodyTextStyle: TextStyle(color: Colors.white, fontSize: 17),
            ),
            title: "Work Seamlessly",
            body: "Get Your Work done Seamlessly  \n     without interruption",
            image: Image.asset("assets/images/p3.png",
                height: 600, width: 340, fit: BoxFit.cover),
          ),
          PageViewModel(
            decoration: PageDecoration(
              imagePadding: EdgeInsets.all(30),
              titleTextStyle: TextStyle(color: Colors.white,fontSize: 35),
              bodyTextStyle: TextStyle(color: Colors.white, fontSize: 17),
            ),
            title: "Achieve Higher Goals",
            body: "by boosting your producivity we help \n   you achieve higher goals",
            image: Image.asset("assets/images/p4.png",height: 600, width: 340, fit: BoxFit.cover),
          ),
        ],
        dotsDecorator: DotsDecorator(
            color: Colors.grey.shade50, activeColor: Colors.pinkAccent),
        globalBackgroundColor: Colors.black87,
        showNextButton: true,
        next: Container(
          height: 30,
          width: 60,
          decoration: BoxDecoration(
            color: Color(0xffEF895F),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text("next",style: TextStyle(color: Colors.white)),
          ),
        ),
        showDoneButton: true,
        done: Container(
            height: 30,
            width: 60,
            decoration: BoxDecoration(color: Color(0xffEF895F),borderRadius: BorderRadius.circular(10)),
            child: Center(child: Text("done",style: TextStyle(color: Colors.white),))),
        onDone: () async {
          Shar_Helper shar=Shar_Helper();
          await shar.screen();

          Navigator.pushReplacementNamed(context, 'home1');
        },
      ),
    ));
  }
}
