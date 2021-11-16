import 'package:flutter/material.dart';
import 'package:registration_form/screens/appointments.dart';
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
  var _screens = [MyServicesList(), MySchedules(), Appointments()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _bottomBarIndex = 0;
                    });
                  },
                  child: Container(
                    height: 60,
                    decoration:
                        BoxDecoration(
                            border: Border.all(color: Colors.blue),
                          color: _bottomBarIndex == 0 ? Colors.green : Colors.white
                        ),
                    child: Center(
                      child: Text(
                        "Services",
                        style: TextStyle(
                            color: _bottomBarIndex == 0 ? Colors.black : Colors.green,
                            fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _bottomBarIndex = 1;
                      });
                    },
                    child: Container(
                      height: 60,
                decoration:
                      BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          color: _bottomBarIndex == 1 ? Colors.green : Colors.white),
                child: Center(
                    child: Text(
                      "Schedule",
                      style: TextStyle(
                          color: _bottomBarIndex == 1 ? Colors.black : Colors.green,
                          fontSize: 20),
                    ),
                ),
              ),
                  )),
              Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _bottomBarIndex = 2;
                      });
                    },
                    child: Container(
                      height: 60,
                decoration:
                      BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          color: _bottomBarIndex == 2 ? Colors.green : Colors.white),
                child: Center(
                    child: Text(
                      "Appointments",
                      style: TextStyle(
                          color: _bottomBarIndex == 2 ? Colors.black : Colors.green,
                          fontSize: 15),
                    ),
                ),
              ),
                  )),
              Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _bottomBarIndex = 3;
                      });
                    },
                    child: Container(
                      height: 60,
                decoration:
                      BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          color: _bottomBarIndex == 3 ? Colors.green : Colors.white
                      ),
                child: Center(
                    child: Text(
                      "Account",
                      style: TextStyle(
                          color: _bottomBarIndex == 3 ? Colors.black : Colors.green,
                          fontSize: 25),
                    ),
                ),
              ),
                  ))
            ],
          ),
        ),
      ),
      body: _screens[_bottomBarIndex],
    );
  }
}
