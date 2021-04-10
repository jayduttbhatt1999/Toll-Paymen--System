import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/services.dart';

import 'login.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int totalAmount = 0;
  Razorpay _razorpay;

  TextEditingController textEditingController = new TextEditingController();
  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _razorpay.clear();
  }

  void openCheckout() async{
    var options = {
      'key': 'rzp_test_5id9cE1UJlLcTD',
      'amount': totalAmount*100,
      'name': 'Jay Bhatt',
      'description': 'Toll Payment',
      'prefill': {
        'contact': '9999977777',
        'email': 'jay@gmail.com',
      },
      'external': {
        'wallets': ['paytm'],
      }
    };
    try{
      _razorpay.open(options);
    }catch(e){
      debugPrint(e);
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response){
    print("Payment successfull");
    Fluttertoast.showToast(msg: 'Success' + response.paymentId);
  }

  void _handlePaymentError(PaymentFailureResponse response){
    print("Payment Failure");
    Fluttertoast.showToast(msg: 'Error' + response.code.toString() + " . " + response.message);
  }

  void _handleExternalWallet(ExternalWalletResponse response){
    print("External Wallet");
    Fluttertoast.showToast(msg: 'External Wallet' + response.walletName);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Payment"
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
                  Navigator.pop(context);
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LimitedBox(
              maxWidth: 150.0,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Please enter amount',
                ),
                onChanged: (value){
                  setState(() {
                    totalAmount = num.parse(value);
                  });
                },
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            RaisedButton(
              child: Text(''
                  'Pay now',
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),),
              onPressed: () {
                openCheckout();
              },
            )
          ],
        ),
      ),
    );
  }
}

