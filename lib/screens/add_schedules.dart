import 'package:flutter/material.dart';
import 'package:registration_form/constants.dart';

class AddSchedules extends StatelessWidget {
  static String id = "AddSchedules";
  var selectedDate;

  static Future<DateTime?> _showPicker(BuildContext context) async{
    var firstDate = DateTime(2000);
    var lastDate = DateTime(2100);
    var initialDate = DateTime.now();
    var date = await showDatePicker(
      context: context,
      firstDate: firstDate,
      initialDate: initialDate,
      lastDate: lastDate,
    );
    return date;
  }

  static Future<TimeOfDay?> _showTimePicker(BuildContext context) async{
     var time = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
     );
     print(time.toString());
     return time;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Schedules",
          style: Constants.appBarTextStyle,
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            OutlineButton(
              onPressed: () async{
                selectedDate = await _showPicker(context);
              },
              child: Text(
                "Select date",
                textAlign: TextAlign.start,
              ),
              shape: Border.all(
                color: Colors.black
              ),
            ),
            OutlineButton(
              onPressed: () {
                _showTimePicker(context);
              },
              child: Text(
                "Select time"
              ),
            )
          ],
        ),
      ),
    );
  }
}
