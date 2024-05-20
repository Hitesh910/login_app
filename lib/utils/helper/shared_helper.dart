import 'package:shared_preferences/shared_preferences.dart';

class SharedHelper
{
  Future<void> setData(String email)
  async {
    SharedPreferences sha = await SharedPreferences.getInstance();
    sha.setString("email", email);
  }

  Future<String?> getData()
  async {
    SharedPreferences share = await SharedPreferences.getInstance();
    String? vEmail = share.getString('email');
    print(vEmail);
    return vEmail;
  }

  setPass(String pass)
  async {
    SharedPreferences sha = await SharedPreferences.getInstance();
    sha.setString("pass", pass);
  }

  getPass()
  async {
    SharedPreferences share = await SharedPreferences.getInstance();
    String? vPass = share.getString('pass');
    return vPass;
  }
}