import 'package:flutter/material.dart';
import 'package:vtps/view/login.dart';
import 'package:vtps/view/register.dart';

class AppRoutes {
  AppRoutes._();

  static const String authLogin = '/auth-login';
  static const String authRegister = '/auth-register';
  static const String menu = '/menu';

  static Map<String, WidgetBuilder> define() {
    return {
      authLogin: (context) => LoginScreen(),
      authRegister: (context) => RegisterPage(),
    };
  }
}
