import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtps/feedback/Complain.dart';
import 'package:vtps/feedback/feedback.dart';
import 'package:vtps/view/payment.dart';
import 'package:vtps/view/profile.dart';
import 'home.dart';
import 'listtoll.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text(
          "Wallet",
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
        child: Material(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(left: 18, right: 18, top: 34),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Account Overview",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff3A4276),
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                    //margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromRGBO(35, 60, 103, 1),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: Color.fromRGBO(50, 172, 121, 1),
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                            Text(
                              "VISA",
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Text(
                          "**** **** **** 5647",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 2.0),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "CARD HOLDER",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.blue[100],
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 2.0),
                                ),
                                Text(
                                  "Jaydutt Bhatt",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey[100],
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 2.0),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "EXPIRES",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.blue[100],
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 2.0),
                                ),
                                Text(
                                  "8/22",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey[100],
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 2.0),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "CVV",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.blue[100],
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 2.0),
                                ),
                                Text(
                                  "845",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey[100],
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 2.0),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 18, right: 18, top: 22, bottom: 22),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF1F3F6)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "500",
                            style: TextStyle(
                              fontSize: 24,
                              color: Color(0xff171822),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Current Balance",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff3A4276).withOpacity(.4),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => PaymentScreen()));
                        },
                        elevation: 0,
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "+",
                          style:
                              TextStyle(color: Color(0xff1B1D28), fontSize: 22),
                        ),
                        shape: CircleBorder(),
                        color: Colors.blueGrey,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Transaction Histroy",
                  style: TextStyle(
                    fontFamily: 'Montserratt',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF1F3F6)),
                      padding: EdgeInsets.only(
                          top: 20.0, bottom: 20.0, left: 5.0, right: 5.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Anand Toll Plaza",
                                  style: TextStyle(fontSize: 16.0)),
                              Text("₹ 150", style: TextStyle(fontSize: 16.0))
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("28-05-2019",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14.0)),
                              Text("Payment",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14.0))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      padding: EdgeInsets.only(
                          top: 20.0, bottom: 20.0, left: 5.0, right: 5.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("IRB Boriach",
                                  style: TextStyle(fontSize: 16.0)),
                              Text("₹ 200", style: TextStyle(fontSize: 16.0))
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("15-07-2019",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14.0)),
                              Text("Payment",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14.0))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF1F3F6)),
                      padding: EdgeInsets.only(
                          top: 20.0, bottom: 20.0, left: 5.0, right: 5.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Ahmedabad Toll Plaza",
                                  style: TextStyle(fontSize: 16.0)),
                              Text("₹ 150", style: TextStyle(fontSize: 16.0))
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("03-12-2019",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14.0)),
                              Text("Payment",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14.0))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      padding: EdgeInsets.only(
                          top: 20.0, bottom: 20.0, left: 5.0, right: 5.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("L&T Vadodra",
                                  style: TextStyle(fontSize: 16.0)),
                              Text("₹ 170", style: TextStyle(fontSize: 16.0))
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("15-02-2020",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14.0)),
                              Text("Payment",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14.0))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // SizedBox(
                //   height: 200,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ModelServices {
  String title, img;

  ModelServices({this.title, this.img});
}
