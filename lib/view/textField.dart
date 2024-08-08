import 'package:car_pool_ned/view/constant.dart';
import 'package:flutter/material.dart';

Widget CustomTextField(String labelText , TextEditingController controller){
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      fillColor: fieldColor.withOpacity(0.1),
      filled: true,
      labelText: labelText,
      labelStyle: TextStyle(
        color: labelTextColor
      ),
      border: InputBorder.none,


    ),

  );
}