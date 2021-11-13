import 'package:flutter/material.dart';
import 'package:registration_form/screens/add_schedules.dart';
import 'package:registration_form/widgets/my_schedule_item.dart';
import 'package:registration_form/constants.dart';

class MySchedules extends StatelessWidget {
  static String id = "MySchedules";

  List<Widget> getMyScheduleItems() {
    List<Widget> list = [];
    for (int i = 0; i < 5; i++) {
      list.add(MyScheduleItem());
      list.add(
        SizedBox(
          height: 30,
        )
      );
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddSchedules.id);
        },
        child: Icon(
          Icons.add
        ),
      ),
      appBar: AppBar(
        title: Text(
          "My Schedules",
          style: Constants.appBarTextStyle,
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            ...getMyScheduleItems()
          ],
        ),
      ),
    );
  }
}
