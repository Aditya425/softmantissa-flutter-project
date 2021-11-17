import 'dart:html';

import 'package:flutter/material.dart';
import 'package:registration_form/constants.dart';
import 'package:registration_form/screens/add_service.dart';
import 'package:registration_form/widgets/list_item.dart';
import 'package:registration_form/widgets/bottom_bar_item.dart';

import 'account.dart';

class MyWallet extends StatefulWidget {
  static String id = "MyWallet";

  @override
  _MyWalletState createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  List<ListItem> getListItem() {
    List<ListItem> list = [];
    for (int i = 0; i <= 5; i++) {
      list.add(ListItem());
    }
    return list;
  }
  List<BottomBarItem> getBottomBarItem() {
    List<BottomBarItem> list = [];
    List<String> texts = ["Services", "Schedule", "Appointments", "Account"];
    for (int i = 0; i < 4; i++) {
      BottomBarItem item = BottomBarItem(
          title: texts.elementAt(i)
      );
      list.add(item);
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "My Wallet",
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
                    decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(

                        labelText: 'Balance 1500'
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Container(
                    // padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
                    decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                    child: TextField(

                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Payout history',

                        fillColor: Colors.blue,
                          filled:true
                      ),
                    ),
                  ),
                  Container(
                    // padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
                    //decoration: BoxDecoration(border:Border.all(color:Colors.blue)),
                    child: TextField(
                      //controller: firstnameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '1   1000 credited 13-06-2021  12:30 PM\n2  100 credited  13-06-2021  12:30 PM',

                      ),
                    ),
                  ),


                ])));
  }

}



