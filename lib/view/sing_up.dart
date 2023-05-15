import 'package:flutter/material.dart';
import 'package:sing_up/utils/per_helper.dart';

class Sing_UPScreen extends StatefulWidget {
  const Sing_UPScreen({Key? key}) : super(key: key);

  @override
  State<Sing_UPScreen> createState() => _Sing_UPScreenState();
}

class _Sing_UPScreenState extends State<Sing_UPScreen> {
  TextEditingController txtUserEmail=TextEditingController();
  TextEditingController txtUserPassword=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Sing in",style: TextStyle(fontSize: 40,color: Color(0xff2E3A69))),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: txtUserEmail,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purpleAccent),borderRadius: BorderRadius.circular(10)),
                label: Text("Email"),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purpleAccent),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: txtUserPassword,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purpleAccent),borderRadius: BorderRadius.circular(10)),
                label: Text("Password"),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purpleAccent),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: () {
            var useremail=txtUserEmail;
            var userpassword= txtUserPassword;
            Shar_Helper shar=Shar_Helper();
            shar.creatuser(email: useremail.text ,password: userpassword.text );
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Sucess fully ragister")));
            Navigator.pushReplacementNamed(context, '/');
          }, child: Text("Sing up",style: TextStyle(color: Color(0xff2E3A69))),style: ElevatedButton.styleFrom(backgroundColor: Color(0xffF4A0A0)),)
        ],
      ),
    ));
  }
}
