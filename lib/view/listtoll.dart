import 'package:flutter/material.dart';
import 'package:vtps/feedback/Complain.dart';
import 'package:vtps/feedback/feedback.dart';
import 'package:vtps/view/payment.dart';
import 'package:vtps/view/profile.dart';
import 'home.dart';
import 'login.dart';

class ListToll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Toll List",
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
      body: Center(
        child: Container(
          color: Colors.white,
          height: 650,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: <DataColumn>[
                  DataColumn(
                    label: Text('Plaza City',
                      style: TextStyle(
                      color: Colors.blueGrey[900],
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  DataColumn(
                    label: Text('State Plaza',
                      style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),),
                  ),
                  DataColumn(
                    label: Text('Plaza Name',
                      style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),),
                  ),
                ],
                rows: <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Vadodara')),
                      DataCell(Text('Gujarat')),
                      DataCell(Text('L&T Vadodara')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Navsari')),
                      DataCell(Text('Gujarat')),
                      DataCell(Text('IRB Boriach')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Valsad')),
                      DataCell(Text('Gujarat')),
                      DataCell(Text('IRB Bhagwada')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Surat')),
                      DataCell(Text('Gujarat')),
                      DataCell(Text('IRB Choryasi')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Ahemdabad')),
                      DataCell(Text('Gujarat')),
                      DataCell(Text('Ahmedabad Toll Plaza')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Ahemdabad')),
                      DataCell(Text('Gujarat')),
                      DataCell(Text('''Ahmedabad (Ring Road) 
                      Toll Plaza''')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Kheda')),
                      DataCell(Text('Gujarat')),
                      DataCell(Text('Nadiad Toll Plaza')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Anand')),
                      DataCell(Text('Gujarat')),
                      DataCell(Text('Anand Toll Plaza')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Vadodara')),
                      DataCell(Text('Gujarat')),
                      DataCell(Text('Vadodara Toll Plaza')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Kheda')),
                      DataCell(Text('Gujarat')),
                      DataCell(Text('Kheda')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Anand')),
                      DataCell(Text('Gujarat')),
                      DataCell(Text('Vasad')),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
