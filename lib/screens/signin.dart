import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:registration_form/screens/main_bottom_nav_bar.dart';


class Signin extends StatefulWidget{
  const Signin({Key? key}) : super(key: key);
  static String id = "Signin";
  _SigninState createState()=>_SigninState();
}
class _SigninState extends State<Signin>{
  TextEditingController phonenoController=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
            children: <Widget>[

              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 50),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Sign in',
                    fillColor: Colors.green,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  //border: Border.all(color: Colors.blue),

                ),
                child: TextField(

                  controller: phonenoController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone number',

                  ),
                  keyboardType:TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  maxLength: 10,// Only numbers can be entered
                ),
              ),
              Align(alignment: Alignment.bottomRight,
                  child: FlatButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin2page()));
                  },

                    child: Text('Login',style: TextStyle(fontSize: 20.0),),
                    color: Colors.green,
                    textColor: Colors.white,

                  )),]),),




    );
  }
}


class Signin2page extends StatefulWidget{
  _Signin2State createState()=>_Signin2State();
}
class _Signin2State extends State<Signin2page>{
  TextEditingController phonenoController=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
            children: <Widget>[

              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 50),

                child: TextField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Sign in',
                    fillColor: Colors.green,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                 // border: Border.all(color: Colors.blue)
                ),
                child: TextField(

                  controller: phonenoController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter otp',

                  ),
                  keyboardType:TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                 // maxLength: 10,// Only numbers can be entered
                ),
              ),

              Align(alignment: Alignment.bottomRight,
                  child: FlatButton(onPressed: () {
                    Navigator.pushNamed(context, MainBottomNavBar.id);
                  },

                    child: Text('Submit',style: TextStyle(fontSize: 20.0),),
                    color: Colors.green,
                    textColor: Colors.white,

                  )),]),),




    );
  }
}





   