import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vtps/view/home.dart';
import 'package:vtps/view/listtoll.dart';
import 'package:vtps/view/login.dart';
import 'package:vtps/view/payment.dart';
import 'package:vtps/view/profile.dart';

import 'feedback.dart';

class Complain extends StatefulWidget {
  @override
  _ComplainState createState() => _ComplainState();
}

class _ComplainState extends State<Complain> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _compController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          "Sorry for inconvenience",
          style: TextStyle(
            fontFamily: "robo",
            color: Colors.white,
            // fontSize: 15,
            //fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: null,
              accountEmail: null,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new ExactAssetImage('assets/images/drawerbg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(
                'assets/images/zero.jpg',
              )),
            ),
            new ListTile(
                leading: Icon(
                  Icons.dashboard_outlined,
                  color: Colors.blueGrey[900],
                ),
                title: new Text(
                  "Dashboard",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                }),
            new ListTile(
                leading: Icon(
                  Icons.account_box_sharp,
                  color: Colors.blueGrey[900],
                ),
                title: new Text(
                  "User Profile",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                }),
            new ListTile(
                leading: Icon(
                  Icons.payment,
                  color: Colors.blueGrey[900],
                ),
                title: new Text(
                  "Payment",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => PaymentScreen()));
                }),
            new ListTile(
                leading: Icon(
                  Icons.account_balance_wallet_rounded,
                  color: Colors.blueGrey[900],
                ),
                title: new Text(
                  "Wallet",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                }),
            new ListTile(
                leading: Icon(
                  Icons.list,
                  color: Colors.blueGrey[900],
                ),
                title: new Text(
                  "Toll List",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => ListToll()));
                }),
            new ListTile(
                leading: Icon(
                  Icons.miscellaneous_services_outlined,
                  color: Colors.blueGrey[900],
                ),
                title: new Text(
                  "Feedback",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => MyReviewPage()));
                }),
            new Divider(),
            new ListTile(
                leading: Icon(
                  Icons.local_offer,
                  color: Colors.blueGrey[900],
                ),
                title: new Text(
                  "Complains",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Complain()));
                }),
            new ListTile(
                leading: Icon(
                  Icons.power_settings_new,
                  color: Colors.blueGrey[900],
                ),
                title: new Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                }),
          ],
        ),
      ),
      backgroundColor: Colors.blueGrey[200],
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30.0),
          margin: EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              new Text(
                "You can drop your complain here",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat",
                  color: Colors.blueGrey,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              new TextFormField(
                style: TextStyle(
                  //color: Colors.white,
                  fontFamily: 'robo',
                  fontSize: 15,
                ),
                controller: _compController,
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: "Enter Your Complain Here",
                  hintStyle: TextStyle(
                    fontFamily: 'robo',
                    fontSize: 15,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "Your Email id",
                  hintStyle: TextStyle(
                    fontFamily: 'robo',
                    fontSize: 15,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              new RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                ),
                color: Colors.blueGrey[900],
                textColor: Colors.white,
                onPressed: () {
                  Map<String, dynamic> data = {
                    "Email": _emailController.text,
                    "Feedback": _compController.text
                  };
                  FirebaseFirestore.instance.collection("Complains").add(data);
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                  Fluttertoast.showToast(
                      msg: "Our Team Will Shortly With You",
                      fontSize: 20.0,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.grey);
                },
                child: new Text(
                  "Submit Complain",
                  style: TextStyle(fontFamily: "Montserrat", fontSize: 13),
                ),
                padding: EdgeInsets.fromLTRB(80.0, 15.0, 80.0, 15.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
