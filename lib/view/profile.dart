import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("User Profile"),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("Users").snapshots(),
        // ignore: missing_return
        builder: (context, snapshots) {
          if(!snapshots.hasData) return Text("Loading.. Please Wait..");
          return Column(children: [
            Text(snapshots.data.docs[0]['Car Company'], style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
            Text(snapshots.data.docs[0]['Car Model'], style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
            Text(snapshots.data.docs[0]['User'], style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
            Text(snapshots.data.docs[0]['Vehicle number'], style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
            Text(snapshots.data.docs[0]['Contact number'], style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
          ],);
        },
      ),
    );
  }
}
