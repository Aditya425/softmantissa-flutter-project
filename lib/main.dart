import 'package:flutter/material.dart';
import 'package:registration_form/screens/account.dart';
import 'package:registration_form/screens/add_service.dart';
import 'package:registration_form/screens/my_schedules.dart';
import 'package:registration_form/screens/my_services_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        MyServicesList.id : (context) => MyServicesList(),
        AddService.id : (context) => AddService(),
        MySchedules.id : (context) => MySchedules(),
        Account.id : (context) => Account()
      },
      initialRoute: MySchedules.id
    );
  }

}
