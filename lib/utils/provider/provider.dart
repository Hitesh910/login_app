import 'package:flutter/material.dart';
import 'package:login_app/utils/helper/shared_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login with ChangeNotifier
{
  SharedHelper share = SharedHelper();
  String? email;
  String? pass;
  bool? check;

  void saveData(String email)
  {
    share.setData(email);
  }

  void getData()
  async
  {
    email = await share.getData();
    notifyListeners();
  }

  void savePass(String pass)
  {
    share.setPass(pass);
  }

  void getPass()
  async
  {
    pass = await share.getPass();
    notifyListeners();
  }

  void setCheck(bool check) {
    share.setCheck(check);
  }

  void getCheck()
   async
   {
    check = await share.getCheck();
    notifyListeners();
  }
}