import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vtps/Tollinfo/Anand.dart';
import 'package:vtps/Tollinfo/Bagodara.dart';
import 'package:vtps/Tollinfo/Bhagwada.dart';
import 'package:vtps/Tollinfo/Okhamadi.dart';
import 'package:vtps/Tollinfo/Vadodara.dart';
import 'package:vtps/Tollinfo/Vanama.dart';
import 'package:vtps/Tollinfo/Vasad.dart';
import 'package:vtps/feedback/Complain.dart';
import 'package:vtps/feedback/feedback.dart';
import 'package:vtps/view/listtoll.dart';
import 'package:vtps/view/profile.dart';
import 'package:vtps/view/wallet.dart';
import 'login.dart';
import 'payment.dart';
import 'package:vtps/Tollinfo/Ahemdabad.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _vehicalcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    int count = 2;
    return Scaffold(
      //backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text(
          "Dashboard",
          style:
              TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
        ),
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
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomePage()));
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
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey[200],
            image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.fill,
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/images/one.jpg'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(.4),
                            Colors.black.withOpacity(.2),
                          ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Pay Plaza',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 140,
                      ),
                      Container(
                        height: 21,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent),
                        child: Center(
                          child: Text(
                            'Traveling Became Easy.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60.0,
                width: 320,
                child: InkWell(
                  onTap: () => launch('https://tis.nhai.gov.in/'),
                  child: Marquee(
                    text: 'Toll Information System - National Highways Authority of India',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.redAccent),
                    scrollAxis: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    blankSpace: 20.0,
                    velocity: 100.0,
                    //pauseAfterRound: Duration(seconds: 1),
                    startPadding: 10.0,
                    // accelerationDuration: Duration(seconds: 1),
                    accelerationCurve: Curves.linear,
                    //decelerationDuration: Duration(milliseconds: 500),
                    decelerationCurve: Curves.easeOut,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 3.0),
                height: 60.0,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey,
                ),
                child: Text(
                  "Welcome Jaydutt",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 30,
                    fontFamily: 'robo',
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Plazas Under Pay-Plaza",
                style: TextStyle(
                    color: Colors.black87.withOpacity(0.8),
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.left,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 25.0),
                height: 110.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black, width: 0.5),
                            image: DecorationImage(
                              image: AssetImage('assets/images/ahmevad.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 80.0,
                          //color: Colors.transparent,
                          child: new Stack(
                            children: <Widget>[
                              ListTile(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Ahemd()));
                                }, // no matter how big it is, it won't overflow
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                              """Ahmedabad""",
                              style: TextStyle(
                                fontFamily: 'robo',
                              ),
                              textAlign: TextAlign.center
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black, width: 0.5),
                            image: DecorationImage(
                              image: AssetImage('assets/images/Anand.jpg'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          width: 80.0,
                          //color: Colors.transparent,
                          child: new Stack(
                            children: <Widget>[
                              ListTile(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Anand()));
                                }, // no matter how big it is, it won't overflow
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                              """Anand""",
                              style: TextStyle(
                                fontFamily: 'robo',
                              ),
                              textAlign: TextAlign.center
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(width: ,),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black, width: 0.5),
                            image: DecorationImage(
                              image: AssetImage('assets/images/Bogodara.jpg'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          width: 80.0,
                          //color: Colors.transparent,
                          child: new Stack(
                            children: <Widget>[
                              ListTile(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Bagodara()));
                                }, // no matter how big it is, it won't overflow
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                              """Bagodara(MoRTH)""",
                              style: TextStyle(
                                fontFamily: 'robo',
                              ),
                              textAlign: TextAlign.center
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black, width: 0.5),
                            image: DecorationImage(
                              image: AssetImage('assets/images/Bhagwada.jpg'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          width: 80.0,
                          //color: Colors.transparent,
                          child: new Stack(
                            children: <Widget>[
                              ListTile(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Bhagwada()));
                                }, // no matter how big it is, it won't overflow
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                              """Bhagwada""",
                              style: TextStyle(
                                fontFamily: 'robo',
                              ),
                              textAlign: TextAlign.center
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black, width: 0.5),
                            image: DecorationImage(
                              image: AssetImage('assets/images/Okhamadi.jpg'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          width: 80.0,
                          //color: Colors.transparent,
                          child: new Stack(
                            children: <Widget>[
                              ListTile(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Okhamadi()));
                                }, // no matter how big it is, it won't overflow
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                              """Okhamadi""",
                              style: TextStyle(
                                fontFamily: 'robo',
                              ),
                              textAlign: TextAlign.center
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black, width: 0.5),
                            image: DecorationImage(
                              image: AssetImage('assets/images/vadodara.jpg'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          width: 80.0,
                          //color: Colors.transparent,
                          child: new Stack(
                            children: <Widget>[
                              ListTile(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Vadodara()));
                                }, // no matter how big it is, it won't overflow
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                              """Vadodara""",
                              style: TextStyle(
                                fontFamily: 'robo',
                              ),
                              textAlign: TextAlign.center
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black, width: 0.5),
                            image: DecorationImage(
                              image: AssetImage('assets/images/vasad.jpeg'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          width: 80.0,
                          //color: Colors.transparent,
                          child: new Stack(
                            children: <Widget>[
                              ListTile(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Vasad()));
                                }, // no matter how big it is, it won't overflow
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                              """Vasad""",
                              style: TextStyle(
                                fontFamily: 'robo',
                              ),
                              textAlign: TextAlign.center
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black, width: 0.5),
                            image: DecorationImage(
                              image: AssetImage('assets/images/vanana.jpg'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          width: 80.0,
                          //color: Colors.transparent,
                          child: new Stack(
                            children: <Widget>[
                              ListTile(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Vanama()));
                                }, // no matter how big it is, it won't overflow
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                              """Vanana""",
                              style: TextStyle(
                                fontFamily: 'robo',
                              ),
                              textAlign: TextAlign.center
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Container(
              //   //alignment: Alignment.center,
              //   margin: EdgeInsets.symmetric(vertical: 10.0),
              //   height: 100.0,
              //   width: 320,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     color: Colors.blueGrey[200],
              //   ),
              //   child: TextFormField(
              //     //controller: _passwordController,
              //     keyboardType: TextInputType.text,
              //     style: TextStyle(color: Colors.white),
              //     cursorColor: Colors.white,
              //     decoration: InputDecoration(
              //       focusedBorder: UnderlineInputBorder(
              //           borderSide: BorderSide(color: Colors.white)),
              //       hintText: 'Enter Your Vehicle No.',
              //       labelText: "Enter Your Vehicle No.",
              //       hintStyle: TextStyle(
              //           color: Colors.black38,
              //           fontFamily: 'Montserrat',
              //           fontWeight: FontWeight.bold,
              //           fontSize: 30),
              //       labelStyle: TextStyle(
              //           color: Colors.white,
              //           fontFamily: 'Montserrat',
              //           fontWeight: FontWeight.bold,
              //           fontSize: 25),
              //     ),
              //     textAlign: TextAlign.center,
              //   ),
              // ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfilePage()),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/images/userpro.jpg'),
                              fit: BoxFit.cover)),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(.4),
                                  Colors.black.withOpacity(.2),
                                ])),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              """User""",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              """Profile""",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // SizedBox(
                            //   height: 70,
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListToll()),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/images/list.jpg'),
                              fit: BoxFit.cover)),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(.4),
                                  Colors.black.withOpacity(.2),
                                ])),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              """Toll""",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              """List""",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // SizedBox(
                            //   height: 100,
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentScreen()),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/images/payment.png'),
                              fit: BoxFit.cover)),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(.4),
                                  Colors.black.withOpacity(.2),
                                ])),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              """Payment""",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 55,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage()),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/images/wallet.jpg'),
                              fit: BoxFit.cover)),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(.4),
                                  Colors.black.withOpacity(.2),
                                ])),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              """Wallet""",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 55,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  MyReviewPage()),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/images/Feedback.jpg'),
                              fit: BoxFit.cover)),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(.4),
                                  Colors.black.withOpacity(.2),
                                ])),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              """Feedback""",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 55,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Complain()),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/images/complain.png'),
                              fit: BoxFit.cover)),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(.4),
                                  Colors.black.withOpacity(.2),
                                ])),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              """Complain""",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 55,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
