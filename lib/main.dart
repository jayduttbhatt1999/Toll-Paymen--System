import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vtps/view/app.dart';
import 'package:vtps/view/login.dart';
import 'package:vtps/view/register.dart';
import 'package:js/js.dart';
import 'package:http/http.dart';

  void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // title: 'Opening View',
      home: SplashScreen(),
      routes: <String, WidgetBuilder> {
        '/register': (BuildContext context) => new RegisterPage()
      },
    );
  }
}

