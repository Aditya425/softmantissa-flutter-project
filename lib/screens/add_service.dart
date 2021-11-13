import 'package:flutter/material.dart';
import 'package:registration_form/constants.dart';

class AddService extends StatelessWidget {
  static String id = "AddService";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Service",
          style: Constants.appBarTextStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue
                )
              ),
              child: Text(
                "Mentioned in document 1",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
