import 'package:flutter/material.dart';
import 'package:registration_form/constants.dart';

class AddSchedules extends StatefulWidget {
  static String id = "AddSchedules";

  @override
  _AddSchedulesState createState() => _AddSchedulesState();
}

class _AddSchedulesState extends State<AddSchedules> {

  Future<TimeOfDay?> _showTimePicker(BuildContext context) async{
    var time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    print(time.toString());
    return time;
  }

  Future<DateTime?> _showPicker(BuildContext context) async{
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
  DateTime? selectedDate;

  TimeOfDay? selectedTime;

  String dropDownSelectedItem = "Available";

  List<DropdownMenuItem<String>> _getDropDownMenuItem() {
    List<DropdownMenuItem<String>> list = [];
    List<String> items = ["Available", "Not available"];
    for (int i = 0; i < 2; i++) {
      DropdownMenuItem<String> d = DropdownMenuItem(
        value: items[i], child: Text(items[i]),
      );
      list.add(d);
    }
    return list;
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
            FlatButton(
              onPressed: () async{
                selectedDate = await _showPicker(context);
                setState(() {

                });
              },
              child: Text(
                selectedDate == null ? "Select date" : "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}",
                textAlign: TextAlign.start,
              ),
              shape: Border.all(
                color: Colors.blue
              ),
            ),
            FlatButton(
              shape: Border.all(
                color: Colors.blue
              ),
              onPressed: () async{
                selectedTime = (await _showTimePicker(context))!;
                setState(() {

                });
              },
              child: Text(
                selectedTime == null ? "Select time" : "${selectedTime!.hour} : ${selectedTime!.minute}"
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue
                )
              ),
              child: TextFormField(
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: "Description",
                  hintStyle: TextStyle(
                    color: Colors.black54
                  )
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue
                )
              ),
              child: Align(
                alignment: Alignment.center,
                child: DropdownButton<String>(
                  value: dropDownSelectedItem,
                  dropdownColor: Colors.white,
                  items: _getDropDownMenuItem(),
                  onChanged: (String? value) {
                    setState(() {
                      dropDownSelectedItem = value!;
                    });
                  },
                ),
              ),
            ),
            Container(
              child: Align(
                alignment: Alignment.bottomRight,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.green                                  ,
                  child: Text(
                    "Add +",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
