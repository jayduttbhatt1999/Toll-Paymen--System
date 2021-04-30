import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtps/view/register.dart';
import 'package:vtps/view/registerlog.dart';
import 'login.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  final Color backgroundColor = Colors.white;
  final TextStyle styleTextUnderTheLoader = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashDelay = 3;

  @override
  void initState() {
    super.initState();
    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: InkWell(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 7,
                  child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 70,),
                          Text("Vehicle", style: TextStyle(
                            color: Colors.blueGrey[200],
                            fontSize: 60,
                            fontFamily: 'vtks_distress',
                            fontWeight: FontWeight.w500,
                          ),),
                          SizedBox(height: 20,),
                          Text("Toll", style: TextStyle(
                            color: Colors.blueGrey[200],
                            fontSize: 60,
                            fontFamily: 'vtks_distress',
                            fontWeight: FontWeight.w500,
                          ),),
                          Text("Payment", style: TextStyle(
                            color: Colors.blueGrey[200],
                            fontSize: 60,
                            fontFamily: 'vtks_distress',
                            fontWeight: FontWeight.w500,
                          ),),
                          Text("System", style: TextStyle(
                            color: Colors.blueGrey[200],
                            fontSize: 60,
                            fontFamily: 'vtks_distress',
                            fontWeight: FontWeight.w500,
                          ),),
                        ],
                      )),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      CircularProgressIndicator(),
                      Container(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
