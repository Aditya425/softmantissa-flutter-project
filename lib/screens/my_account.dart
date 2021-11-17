import 'package:flutter/material.dart';
import 'package:registration_form/constants.dart';
import 'package:registration_form/screens/add_service.dart';
import 'package:registration_form/screens/my_wallet.dart';
import 'package:registration_form/widgets/list_item.dart';
import 'package:registration_form/widgets/bottom_bar_item.dart';

import 'account.dart';

class MyAccount extends StatefulWidget {
  static String id = "MyAccount";

  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
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
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                    child: Text('Edit Profile'
                     // style: TextStyle(color: Colors.white),
                     // decoration: InputDecoration(
                        //border: OutlineInputBorder(),
                        //labelText: 'Edit Profile',
                        //fillColor: Colors.green,
                        //filled: true,
                      ),
                    ),

                  SizedBox(
                    height: 5,
                  ),

                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                    child: Text('Privacy Policy'
                      //controller: firstnameController,
                      //decoration: InputDecoration(
                       // border: OutlineInputBorder(),
                        //labelText: 'Privacy policy',
                      ),
                    ),

                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                    child: Text('Contact Us'),
                      //controller: firstnameController,
                      //decoration: InputDecoration(
                       // border: OutlineInputBorder(),
                        //labelText: 'Contact us',
                      ),
                    //),
                 // ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.blue)),

                  child:Align(alignment: Alignment.bottomLeft,
                      child:FlatButton(
                        child: Text('My Wallet'),
                        onPressed: () {
                          Navigator.pushNamed(context, MyWallet.id);
                        },

                      ),

                  ),
                  ),


                  SizedBox(
                    height: 10,
                  )
                ])));
  }

  }



