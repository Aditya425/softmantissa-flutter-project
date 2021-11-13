import 'package:flutter/material.dart';
import 'package:registration_form/constants.dart';
import 'package:registration_form/screens/add_service.dart';
import 'package:registration_form/widgets/list_item.dart';
import 'package:registration_form/widgets/bottom_bar_item.dart';

class MyServicesList extends StatefulWidget {
  static String id = "MyServicesList";

  @override
  _MyServicesListState createState() => _MyServicesListState();
}

class _MyServicesListState extends State<MyServicesList> {
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
          "My Services List",
          style: Constants.appBarTextStyle,
        ),
        backgroundColor: Colors.green,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add
        ),
        onPressed: () {
          Navigator.pushNamed(context, AddService.id);
        },
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ...getListItem()
          ],
        ),
      ),
    );
  }
}
