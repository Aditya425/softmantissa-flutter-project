import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Service name",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20
              ),
            ),
            Text(
              "Description",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20
              ),
            ),
            Text(
              "Charges",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20
              ),
            ),
            Row(
              children: [
                Text(
                  "Edit",
                  style: TextStyle(
                    color: Colors.red,
                      fontSize: 20
                  ),
                ),
                Text(
                  " | ",
                  style: TextStyle(
                    color: Colors.red,
                      fontSize: 20
                  ),
                ),
                Text(
                  "Delete",
                  style: TextStyle(
                    color: Colors.green,
                      fontSize: 20
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
