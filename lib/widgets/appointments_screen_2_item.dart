import 'package:flutter/material.dart';

class AppointmentsScreen2Item extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Cost",
              style: TextStyle(
                color: Colors.black,
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
            Text(
              "Complete",
              style: TextStyle(
                color: Colors.red,
                fontSize: 18
              ),
            )
          ],
        ),
      ),
    );
  }
}
