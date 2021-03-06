import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/services.dart';
import 'package:vtps/feedback/Complain.dart';
import 'package:vtps/feedback/feedback.dart';
import 'package:vtps/view/wallet.dart';
import 'home.dart';
import 'listtoll.dart';
import 'login.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int totalAmount = 0;
  Razorpay _razorpay;
  String _chosenValue;

  TextEditingController textEditingController = TextEditingController();

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

  void openCheckout() async {
    var options = {
      'key': 'rzp_test_5id9cE1UJlLcTD',
      'amount': totalAmount * 100,
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
    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint(e);
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    print("Payment successfull");
    Fluttertoast.showToast(msg: 'Success' + response.paymentId);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print("Payment Failure");
    Fluttertoast.showToast(
        msg: 'Error' + response.code.toString() + " . " + response.message);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    print("External Wallet");
    Fluttertoast.showToast(msg: 'External Wallet' + response.walletName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
        backgroundColor: Colors.blueGrey,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
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
            ListTile(
                leading: Icon(
                  Icons.dashboard_outlined,
                  color: Colors.blueGrey[900],
                ),
                title: Text(
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
            ListTile(
                leading: Icon(
                  Icons.account_box_sharp,
                  color: Colors.blueGrey[900],
                ),
                title: Text(
                  "User Profile",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () => Navigator.pop(context)),
            ListTile(
                leading: Icon(
                  Icons.payment,
                  color: Colors.blueGrey[900],
                ),
                title: Text(
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
            ListTile(
                leading: Icon(
                  Icons.account_balance_wallet_rounded,
                  color: Colors.blueGrey[900],
                ),
                title: Text(
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
            ListTile(
                leading: Icon(
                  Icons.list,
                  color: Colors.blueGrey[900],
                ),
                title: Text(
                  "Toll List",
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => ListToll()))),
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
            ListTile(
              leading: Icon(
                Icons.power_settings_new,
                color: Colors.blueGrey[900],
              ),
              title: Text(
                "Logout",
                style: TextStyle(
                  color: Colors.blueGrey[900],
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              ),
            ),
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
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 300,
                        child: DropdownButton<String>(
                          isExpanded: true,
                          itemHeight: 100,
                          focusColor: Colors.white,
                          value: _chosenValue,
                          // elevation: 5,
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'robo'),
                          iconEnabledColor: Colors.black,
                          items: <String>[
                            'Ahmedabad Vadodra Expressways 1 & 2',
                            'N.H.8A Km 61.4 to Km 182.4 (Bagodara)',
                            'Surat Dahisar (Bhagwada)',
                            'Porbandar to Dwarka (Okhamadi)',
                            'NE 01 (Vadodara)',
                            'Porbander Bhiladi (Vanana)',
                            'Ahmedabad - Vadodara (Vasad)',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    color: Colors.black, fontFamily: 'robo'),
                              ),
                            );
                          }).toList(),
                          hint: Text(
                            "Please Select Your Toll ",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'robo',
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          onChanged: (String value) {
                            setState(() {
                              _chosenValue = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      LimitedBox(
                        maxWidth: 150.0,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: 'Please enter amount',
                              hintStyle: TextStyle(fontFamily: 'robo')),
                          onChanged: (value) =>
                              setState(() => totalAmount = num.parse(value)),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      MaterialButton(
                        color: Colors.blueGrey,
                        child: Text(
                          'Pay Now',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 22.0,
                            fontFamily: 'robo',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: openCheckout,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
