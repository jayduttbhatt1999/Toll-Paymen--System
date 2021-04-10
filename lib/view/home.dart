import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtps/view/profile.dart';
import 'login.dart';
import 'payment.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    int count = 2;
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Dashboard",
          style:
              TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 36,
              height: 30,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: null,
              accountEmail: null,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new ExactAssetImage('assets/images/lake.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/zero.jpg',)
              ),
            ),
            new ListTile(
                leading: Icon(Icons.dashboard_outlined,
                  color: Colors.blueGrey[900],),
                title: new Text("Dashboard",
                style: TextStyle(
                  color: Colors.blueGrey[900],
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),),
                onTap: () {
                  Navigator.pop(context);
                }),
            new ListTile(
                leading: Icon(Icons.account_box_sharp,
                  color: Colors.blueGrey[900],),
                title: new Text("User Profile",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                }),
            new ListTile(
                leading: Icon(Icons.payment,
                  color: Colors.blueGrey[900],),
                title: new Text("Payment",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => PaymentScreen()));
                }),
            new ListTile(
                leading: Icon(Icons.account_balance_wallet_rounded,
                  color: Colors.blueGrey[900],),
                title: new Text("Wallet",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),),
                onTap: () {
                  Navigator.pop(context);
                }),
            new ListTile(
                leading: Icon(Icons.settings,
                  color: Colors.blueGrey[900],),
                title: new Text("Settings",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),),
                onTap: () {
                  Navigator.pop(context);
                }),
            new ListTile(
                leading: Icon(Icons.miscellaneous_services_outlined,
                  color: Colors.blueGrey[900],),
                title: new Text("Services",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),),
                onTap: () {
                  Navigator.pop(context);
                }),
            new Divider(),
            new ListTile(
                leading: Icon(Icons.local_offer,
                  color: Colors.blueGrey[900],),
                title: new Text("Offers",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),),
                onTap: () {
                  Navigator.pop(context);
                }),
            new ListTile(
                leading: Icon(Icons.power_settings_new,
                  color: Colors.blueGrey[900],),
                title: new Text("Logout",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                }),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/images/one.jpg'),
                          fit: BoxFit.cover)
                  ),
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
                          'V.T.P.S',
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
                  height: 30,
                ),
                Container(
                  height: 330,
                  width: 340,
                  //padding: EdgeInsets.all(3.0),
                  child: GridView.count(
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 2,
                      crossAxisCount: 2,
                      children: <Widget>[
                        Column(
                          children: [
                            RaisedButton(
                              elevation: 15.0,
                              onPressed: () {
                                 Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context) => ProfilePage()),
                                 );
                              },
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.account_circle_rounded,
                                    color: Colors.blueGrey[900],
                                    size: 120,
                                  ),
                                  Text('Profile', style: TextStyle(
                                    color: Colors.blueGrey[900],
                                    fontSize: 25,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                  ),)
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            RaisedButton(
                              elevation: 15.0,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PaymentScreen()));
                              },
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.qr_code,
                                    color: Colors.blueGrey[900],
                                    size: 120,
                                  ),
                                  Text('Payment', style: TextStyle(
                                    color: Colors.blueGrey[900],
                                    fontSize: 25,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                  ),)
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            RaisedButton(
                              elevation: 15.0,
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.account_balance_wallet,
                                    color: Colors.blueGrey[900],
                                    size: 120,
                                  ),
                                  Text('Wallet', style: TextStyle(
                                    color: Colors.blueGrey[900],
                                    fontSize: 25,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                  ),)
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            RaisedButton(
                              elevation: 15.0,
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.settings,
                                    color: Colors.blueGrey[900],
                                    size: 120,
                                  ),
                                  Text('Settings', style: TextStyle(
                                    color: Colors.blueGrey[900],
                                    fontSize: 25,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                  ),)
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            RaisedButton(
                              elevation: 15.0,
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.miscellaneous_services,
                                    color: Colors.blueGrey[900],
                                    size: 120,
                                  ),
                                  Text('Services', style: TextStyle(
                                    color: Colors.blueGrey[900],
                                    fontSize: 25,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                  ),)
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            RaisedButton(
                              elevation: 15.0,
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.local_offer,
                                    color: Colors.blueGrey[900],
                                    size: 120,
                                  ),
                                  Text('Offers', style: TextStyle(
                                    color: Colors.blueGrey[900],
                                    fontSize: 25,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                  ),)
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ],
                        ),
                      ]
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
    );
  }
}
