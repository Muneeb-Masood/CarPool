import 'package:car_pool_ned/view/backButton.dart';
import 'package:car_pool_ned/view/button.dart';
import 'package:car_pool_ned/view/constant.dart';
import 'package:car_pool_ned/view/textField.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
   Login({super.key});
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: backButton(context),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,


        crossAxisAlignment: CrossAxisAlignment.start,
children: [
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,

    children: [
      SizedBox(height: 60,),
      Container(
        margin: EdgeInsets.only(left: 20),
        child: Text("Your email and password" ,  style: TextStyle(

          fontSize: 24,
          fontWeight: FontWeight.bold,
          fontFamily: 'Roboto',

        ),),
      ),
      Container(

        margin: EdgeInsets.only(
            left: 20 , right: 20 , top:  20
        ),
        // width: width(context)*.9,
        child: CustomTextField("Email", emailController)

      ),
      Container(
        margin: EdgeInsets.only(
            left: 20 , right: 20 , top:  30
        ),
        // width: width(context)*.9,
        child:
        CustomTextField("Password", passwordController)
      ),
      Container(
        decoration: BoxDecoration(

        ),
        margin: EdgeInsets.only(left: 20 , right: 20 , top: 20),
        child: InkWell(
          child: Text("Forgot Password ?" , style: TextStyle(
              color: linkColor,
              decoration: TextDecoration.underline,
              decorationColor: Colors.lightBlue
          ),),
        ),
      ),

    ],
  ),
  Container(
      margin: EdgeInsets.only( bottom: 20),

      child: CustomizedButton(context, "Login" ))

],
      ) ,
    );
  }
}
