import 'package:flutter/material.dart';
import 'package:registration_form/constants.dart';
import 'package:registration_form/screens/appointments_screen_2.dart';
import 'package:registration_form/widgets/appointments_item.dart';

class Appointments extends StatelessWidget {
  const Appointments({Key? key}) : super(key: key);

  List<Widget> _getAppointmentsItem(BuildContext context) {
    List<Widget> list = [];
    for (int i = 0; i < 5; i++) {
      AppointmentsItem item = AppointmentsItem(
        onPressed: () {
          Navigator.pushNamed(context, AppointmentsScreen2.id);
        },
      );
      list.add(item);
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
      appBar: AppBar(
        title: Text(
          "Appointments",
          style: Constants.appBarTextStyle,
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: _getAppointmentsItem(context),
        ),
      ),
    );
  }
}
