import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:registration_form/screens/signin.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  static String id = "SignUp";

  @override
  _SignUp createState() => _SignUp();
}

class _SignUp extends State<SignUp>
{
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phonenoController=TextEditingController();
  TextEditingController pincodeController=TextEditingController();

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
                    labelText: 'Registration',
                    fillColor: Colors.green,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                padding: EdgeInsets.all(6),
               // decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                child: TextField(
                  controller: firstnameController,

                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    fillColor: Colors.blue,
                    hintText: 'First Name',
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(6),
               // decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                child: TextField(
                  controller: lastnameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Last Name',

                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(6),
               // decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                child: TextField(

                  controller: emailController,
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                    hintText: 'Email',
                  ),
                ),
              ),
              
              SizedBox(
                height: 5,
              ),

              Container(
                padding: EdgeInsets.all(6),
                //decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                child: TextField(

                  controller: phonenoController,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),

                    hintText: 'Phone no',

                  ),
                  keyboardType:TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  //maxLength: 10,// Only numbers can be entered
                ),
              ),
              SizedBox(
                height: 5,
              ),


              Container(
                padding: EdgeInsets.all(6),
                //decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                child: TextField(

                  controller: addressController,
                  decoration: InputDecoration(
                   border: OutlineInputBorder(),
                    hintText: 'Address',
                  ),
                  maxLines: 3,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                //decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                padding: EdgeInsets.all(6),
                child: TextField(

                  controller: pincodeController,
                  decoration: InputDecoration(
                   border: OutlineInputBorder(),
                    hintText: 'Pin code',
                  ),
                  keyboardType:TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ], // Only numbers can be entered
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                padding: EdgeInsets.all(6),
                child: Text('Open Form',
                  style: TextStyle(color: Colors.black,backgroundColor: Colors.yellow),


                  ),

                ),
              SizedBox(
                height: 5,
              ),

              Align(alignment: Alignment.bottomRight,
                  child: FlatButton(onPressed: () {
                    Navigator.pushNamed(context, Signin.id);
                  },

                    child: Text('Sign Up',style: TextStyle(fontSize: 20.0),),
                    color: Colors.green,
                    textColor: Colors.white,

                  )),]),),




    );
  }
}