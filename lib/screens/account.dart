import 'package:flutter/material.dart';

import '../constants.dart';

class Account extends StatelessWidget {
  static String id = "Account";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My account",
          style: Constants.appBarTextStyle,
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
            children: <Widget>[

        Container(
        //padding: EdgeInsets.fromLTRB(10, 0, 10, 50),

        child: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Edit Profile',
            fillColor: Colors.green,
            filled: true,
          ),
        ),
      ),
    SizedBox(
    height: 10,
    ),

      Container(
       // padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
        child: TextField(
          //controller: firstnameController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Privacy policy',
          ),
        ),
      ),
          SizedBox(
          height: 10,
    ),
    Container(
    // padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
    child: TextField(
    //controller: firstnameController,
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Contact us',
    ),
    ),
    ),
    SizedBox(
    height: 10,
    ),

    Container(
    // padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
    child: TextField(
    //controller: firstnameController,
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'My wallet',
    ),
    ),

    ),
    SizedBox(
    height: 10,
    )
    ])));
  }
}


