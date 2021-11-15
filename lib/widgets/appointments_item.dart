import 'package:flutter/material.dart';

class AppointmentsItem extends StatelessWidget {

  final VoidCallback onPressed;
  AppointmentsItem({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue
        )
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cost"
          ),
          Text(
            "Service",
            style: TextStyle(
              color: Colors.green
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: onPressed,
                child: Text(
                  "Approve | ",
                  style: TextStyle(
                    color: Colors.red
                  ),
                ),
              ),
              GestureDetector(
                onTap: onPressed,
                child: Text(
                  " Reject",
                  style: TextStyle(
                      color: Colors.red
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
