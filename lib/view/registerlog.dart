import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'home.dart';
import 'login.dart';
import 'register.dart';
import 'verify.dart';
class RegisterPage1 extends StatefulWidget {
  @override
  _RegisterPage1State createState() => _RegisterPage1State();
}

enum FormType { register }

class _RegisterPage1State extends State<RegisterPage1> {

  static final _formKey = GlobalKey<FormState>();

  // TextEditingController _emailController = new TextEditingController();
  // TextEditingController _passwordController = new TextEditingController();
  TextEditingController _repasswordController = new TextEditingController();
  String email, password;
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final logo = Image.asset(
      "assets/images/logo.png",
      height: 200,
    );
    final mq = MediaQuery.of(context);
    final auth = FirebaseAuth.instance;
    final emailField = Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          hintText: "something@email.com",
          labelText: "Email",
          labelStyle: TextStyle(
            color: Colors.white,
            fontFamily: 'robo'
          ),
          hintStyle: TextStyle(
            color: Colors.white60,
              fontFamily: 'robo'
          ),
        ),
        onChanged: (value) {
          setState(() {
            email = value.trim();
          });
        },
      ),
    );

    final passwordField =  Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          hintText: "Enter your password",
          labelText: "Password",
          labelStyle: TextStyle(
              color: Colors.white,
              fontFamily: 'robo'
          ),
          hintStyle: TextStyle(
              color: Colors.white60,
              fontFamily: 'robo'
          ),
        ),
        onChanged: (value) {
          setState(() {
            password = value.trim();
          });
        },
      ),
    );

    final repasswordField = TextField(
      obscureText: true,
      controller: _repasswordController,
      style: TextStyle(
        color: Colors.white,
      ),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        hintText: "password",
        labelText: "Re-enter Password",
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        hintStyle: TextStyle(
          color: Colors.white,
        ),
      ),
    );

    final fields = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          emailField,
          passwordField,
        ],
      ),
    );

    final registerButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "Register",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () async {
          try {
            await auth.createUserWithEmailAndPassword(email: email, password: password).then((_) {
              //success
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => VerifyScreen()));
            });
          } on FirebaseAuthException catch (e) {
            Fluttertoast.showToast(msg: e.message, gravity: ToastGravity.TOP);
          }
        },
      ),
    );

    final bottom = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        registerButton,
        Padding(
          padding: EdgeInsets.all(2.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Already have an account?",
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                color: Colors.white,
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text(
                "Login",
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ],
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Information Register",
          style:
          TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(right: 10,left: 10),
            height: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                logo,
                fields,
                bottom,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
