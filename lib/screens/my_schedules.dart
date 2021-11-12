import 'package:flutter/material.dart';
import 'package:registration_form/widgets/my_schedule_item.dart';
import 'package:registration_form/constants.dart';

class MySchedules extends StatelessWidget {
  static String id = "MySchedules";

  List<MyScheduleItem> getMyScheduleItems() {
    List<MyScheduleItem> list = [];
    for (int i = 0; i < 5; i++) {
      list.add(MyScheduleItem());
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Schedules",
          style: Constants.appBarTextStyle,
        ),
        
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
