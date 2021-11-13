import 'package:flutter/material.dart';
import 'package:registration_form/screens/my_schedules.dart';
import 'package:registration_form/screens/my_services_list.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({Key? key}) : super(key: key);
  static String id = "MainBottomNavBar";

  @override
  _MainBottomNavBarState createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  var _bottomBarIndex = 0;
  var _screens = [MyServicesList(), MySchedules()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _bottomBarIndex,
        onTap: (index) {
          setState(() {
            _bottomBarIndex = index;
          });
        },
        backgroundColor: Colors.white,
        selectedFontSize: 20,
        unselectedFontSize: 15,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(null),
              label: "Services",
              backgroundColor: Colors.green
          ),
          BottomNavigationBarItem(
              icon: Icon(null),
              label: "Schedule",
              backgroundColor: Colors.green
          ),
          BottomNavigationBarItem(
              icon: Icon(null),
              label: "Appointments",
              backgroundColor: Colors.green
          ),
          BottomNavigationBarItem(
              icon: Icon(null),
              label: "Account",
              backgroundColor: Colors.green
          )
        ],
      ),
      body: _screens[_bottomBarIndex],
    );
  }
}
