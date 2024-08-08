import 'package:car_pool_ned/view/button.dart';
import 'package:car_pool_ned/view/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class ConfirmationScreen extends StatelessWidget{

  Widget build(BuildContext context){

      return Scaffold(

        appBar: AppBar(
          leading: BackButton(),
        ),

        body: Container(

          margin: EdgeInsets.only(left:  30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Expanded(
               flex: 5,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Image(image: Svg("assets/images/car.svg")),
                   SizedBox(height: 20,),
                   Text("Booked! Your ride has been confirmed!" , style:
                   TextStyle(
                       fontFamily: "Roboto" ,
                       fontSize: 26,
                       color: Colors.black,
                       fontWeight: FontWeight.bold,
                   ),),
                   SizedBox(height: 20,),

                   Text("Your driver will wait only 5 mints" , style: TextStyle(
                     color: labelTextColor ,
                     fontFamily: "Roboto" ,
                     fontSize: 18,
                   ),),
                 ],
               ),
             ),
              Expanded(child: CustomizedButton(context, "View Ride"))
            ],
          ),
        ),

      );

  }

}