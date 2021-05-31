import 'package:flutter/cupertino.dart';

class LoginController  {

  static LoginController loginInstance = LoginController();

  String email = '';

  void changeEmail(String email) {
    this.email = email;
  }
}