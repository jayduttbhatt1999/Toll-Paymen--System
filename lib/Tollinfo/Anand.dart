import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Anand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[200],
        elevation: 0,
        title: Text(
          "Anand",
          style:
          TextStyle(fontFamily: 'Montserrat',color: Colors.white ,fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: Colors.white,
        height: 650,
        child: SingleChildScrollView(
          // scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              DataTable(
                dataRowHeight: 80,
                columnSpacing: 15,
                columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      '''
Type 
of 
vehicle''',
                      style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      '''
Single 
Journey''',
                      style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      '''
Return 
Journey''',
                      style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      '''Monthly 
Pass''',
                      style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
//                   DataColumn(
//                     label: Text("""Commercial Vehicle Registered
// within the district of plaza""",
//                       style: TextStyle(
//                         color: Colors.blueGrey[900],
//                         fontSize: 14,
//                         fontFamily: 'Montserrat',
//                         fontWeight: FontWeight.bold,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
                ],
                rows: <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('''
Car/
Jeep/Van''')),
                      DataCell(Text('115.00')),
                      DataCell(Text('175.00')),
                      DataCell(Text('3845.00')),
                      // DataCell(Text('NA')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('LCV')),
                      DataCell(Text('185.00')),
                      DataCell(Text('280.00')),
                      DataCell(Text('6210.00')),
                      // DataCell(Text('NA')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('''
Bus/
Truck''')),
                      DataCell(Text('390.00')),
                      DataCell(Text('585.00')),
                      DataCell(Text('13005.0')),
                      // DataCell(Text('NA')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('''Upto 3 
Axle Vehicle''')),
                      DataCell(Text('425.00')),
                      DataCell(Text('640.00')),
                      DataCell(Text('14190.00')),
                      // DataCell(Text('NA')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('''
4 to 
6 Axle''')),
                      DataCell(Text('610')),
                      DataCell(Text('''920''')),
                      DataCell(Text('20395.00')),
                      // DataCell(Text('NA')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('HCM/EME')),
                      DataCell(Text('610')),
                      DataCell(Text('''920''')),
                      DataCell(Text('20395.00')),
                      // DataCell(Text('NA')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('''
7 or 
more Axle''')),
                      DataCell(Text('745.00')),
                      DataCell(Text('1115.00')),
                      DataCell(Text('24830.00')),
                      // DataCell(Text('NA')),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                // height: 60.0,
                width: 320,
                alignment: Alignment.topLeft,
                //color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.blueGrey[200],
                      width: 320,
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                      child: Text("Facilities avalaible here",
                          style: TextStyle(
                            fontFamily: 'robo',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.left),
                    ),
                    Container(
                      // color: Colors.white54,
                      height: 120.0,
                      width: 320,
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                      child: Text("""
Rest Areas :	NA
Truck Lay byes :	NA
Static Weigh Bridge :	NA
""",
                          style: TextStyle(
                            fontFamily: 'robo',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.left),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
