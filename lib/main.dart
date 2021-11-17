import 'package:flutter/material.dart';
import 'package:registration_form/screens/account.dart';
import 'package:registration_form/screens/add_schedules.dart';
import 'package:registration_form/screens/add_service.dart';
import 'package:registration_form/screens/appointments_screen_2.dart';
import 'package:registration_form/screens/main_bottom_nav_bar.dart';
import 'package:registration_form/screens/my_schedules.dart';
import 'package:registration_form/screens/my_services_list.dart';
import 'package:registration_form/screens/my_wallet.dart';
import 'package:registration_form/screens/signin.dart';
import 'package:registration_form/screens/signup.dart';

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
        SignUp.id:(context)=>SignUp(),
        Signin.id:(context)=>Signin(),
        MainBottomNavBar.id : (context) => MainBottomNavBar(),
        MyServicesList.id : (context) => MyServicesList(),
        AddService.id : (context) => AddService(),
        MySchedules.id : (context) => MySchedules(),
        Account.id : (context) => Account(),
        AddSchedules.id : (context) => AddSchedules(),
        AppointmentsScreen2.id : (context) => AppointmentsScreen2(),
        MyWallet.id:(context)=>MyWallet()
      },
      initialRoute: SignUp.id,
    );
  }

}
