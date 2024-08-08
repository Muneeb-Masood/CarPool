import 'package:flutter/material.dart';
import 'constant.dart';




Widget CustomizedButton(BuildContext context , String text){
  return  Center(
    child: Container(
      // color: Colors.green,
      child: InkWell(
          onTap:(){

          },
          child:Container(
            alignment: Alignment.center,

            width: width(context)*.8,
            height: height(context)*.065,
            decoration: BoxDecoration(
              color: redColor,
              borderRadius: BorderRadius.circular(28),

            ),

            child: Text(text  , style: TextStyle(
                color: Colors.white
            ),),
          )
      ),
    ),
  );
}