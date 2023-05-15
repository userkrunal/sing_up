import 'package:shared_preferences/shared_preferences.dart';

class Shar_Helper
{
  Future<void> creatuser({required String email,required String password})
  async {
    SharedPreferences shar= await SharedPreferences.getInstance();
    shar.setString("email", email);
    shar.setString("password", password);
  }


  Future<Map<String, String?>> radeuser()
  async {
    SharedPreferences shar=  await SharedPreferences.getInstance();
    var e1=shar.getString("email");
    var p1=shar.getString("password");
    return {"email":e1 ,"password":p1};
  }
}