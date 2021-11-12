import 'package:flutter/material.dart';

class BottomBarItem extends StatelessWidget {
  final String title;
  BottomBarItem({required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.green
          ),
        ),
      ),
    );
  }
}
