import 'package:flutter/material.dart';
import 'package:registration_form/constants.dart';
import 'package:registration_form/widgets/appointments_screen_2_item.dart';

class AppointmentsScreen2 extends StatelessWidget {
  static String id = "AppointmentsScreen2";

  List<Widget> _getAppointmentsScreen2Item() {
    List<Widget> list = [];
    for (int i = 0; i < 5; i++) {
      AppointmentsScreen2Item item = AppointmentsScreen2Item();
      list.add(item);
      list.add(
        SizedBox(
          height: 20,
        )
      );
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Appointment",
          style: Constants.appBarTextStyle,
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: _getAppointmentsScreen2Item(),
        ),
      ),
    );
  }
}
