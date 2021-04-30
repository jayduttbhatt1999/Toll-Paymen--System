import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class ResetScreen extends StatefulWidget {
  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {

  String _email;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset Password"),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0,left: 20,right: 20, bottom: 20),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: 'Email'),
              onChanged: (value) {
                setState(() {
                  _email = value.trim();
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.blueGrey,
                child: MaterialButton(
                    minWidth: mq.size.width / 1.2,
                    padding: const EdgeInsets.only(top: 15.0,left: 20,right: 20, bottom: 15),
                    // color: Colors.blueGrey,
                    child: Text("Send Request",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white60,
                        fontFamily: 'robo',
                        fontWeight: FontWeight.bold,
                      ),),
                    onPressed: () {
                      auth.sendPasswordResetEmail(email: _email);
                      Navigator.of(context).pop();
                    }
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
