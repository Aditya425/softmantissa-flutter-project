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
            "Cost",
            style: TextStyle(
              fontSize: 18
            ),
          ),
          Text(
            "Service",
            style: TextStyle(
              color: Colors.green,
              fontSize: 18
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: onPressed,
                splashColor: Colors.red,
                focusColor: Colors.grey,
                child: Container(
                  height: 30,
                  child: Text(
                    "Approve | ",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: onPressed,
                splashColor: Colors.red,
                focusColor: Colors.grey,
                child: Container(
                  height: 30,
                  child: Text(
                    " Reject",
                    style: TextStyle(
                        color: Colors.red,
                      fontSize: 18
                    ),
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
