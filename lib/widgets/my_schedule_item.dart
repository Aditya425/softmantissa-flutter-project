import 'package:flutter/material.dart';

class MyScheduleItem extends StatelessWidget {
  const MyScheduleItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue
        )
      ),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Date and time",
            style: TextStyle(
              color: Colors.black
            ),
          ),
          Text(
            "Available",
            style: TextStyle(
              color: Colors.red
            ),
          ),
          Text(
            "Reason",
            style: TextStyle(
                color: Colors.red
            ),
          ),
          Row(
            children: [
              Text(
                "Edit",
                style: TextStyle(
                    color: Colors.red
                ),
              ),
              Text(
                " | ",
                style: TextStyle(
                    color: Colors.red
                ),
              ),
              Text(
                "Delete",
                style: TextStyle(
                    color: Colors.green
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
