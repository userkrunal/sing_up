import 'package:flutter/material.dart';
import 'package:sing_up/utils/per_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
  TextEditingController txtEmail=TextEditingController();
  TextEditingController txtPassword=TextEditingController();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(alignment: Alignment.topCenter,
                child: Image.asset("assets/images/p1.png")),
            SizedBox(height: 20),
            Text("Sing in",style: TextStyle(fontSize: 40,color: Color(0xff2E3A69))),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: txtEmail,
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
                controller: txtPassword,
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
            ElevatedButton(onPressed: () async {
              Shar_Helper shar=Shar_Helper();
              var email=txtEmail.text;
              var password=txtPassword.text;
              Map m1=await shar.radeuser();
              if(email==m1["email"] && password==m1["password"])
                {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfuly Logni")));
                  Navigator.pushReplacementNamed(context, "home");
                }
              else
                {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("In Vaild user id and password")));
                }
            }, child: Text("Sing in",style: TextStyle(color: Color(0xff2E3A69))),style: ElevatedButton.styleFrom(backgroundColor: Color(0xffF4A0A0)),),
            SizedBox(height: 20),
            InkWell(onTap: () {
              Navigator.pushNamed(context, 'sing');
            }, child: Text("Create a new account? ",style: TextStyle(color: Color(0xff2E3A69)),)),

          ],
        ),
      ),
    ));
  }
}
