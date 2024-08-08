import 'package:car_pool_ned/view/constant.dart';
import 'package:car_pool_ned/view/login.dart';
import 'package:flutter/material.dart';

Widget backButton(BuildContext context, ){
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    },
    child: Container(

      margin: EdgeInsets.only(top: 10 , left: 10),
      decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(10) ,
          color: Colors.grey.withOpacity(.1)
      ),
      child: Icon(Icons.arrow_back_ios_rounded , color: redColor,),
    ),
  );
}