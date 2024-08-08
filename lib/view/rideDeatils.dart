import 'package:car_pool_ned/view/backButton.dart';
import 'package:car_pool_ned/view/button.dart';
import 'package:car_pool_ned/view/constant.dart';
import 'package:car_pool_ned/view/textField.dart';
import 'package:flutter/material.dart';

class RideDetails extends StatefulWidget {
  @override
  State<RideDetails> createState() => _RideDetailsState();
}

class _RideDetailsState extends State<RideDetails> {
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backButton(context),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find a ride",
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
                ),
                SizedBox(height: 30),
                Text(
                  "Where are you going?",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: blackTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 30),
                Container( margin: EdgeInsets.only(right: 20
                ),child: CustomTextField("From", fromController)),
                SizedBox(height: 30),
                Container( margin: EdgeInsets.only(
                  right: 20
                ),child: CustomTextField("To", toController)),
                SizedBox(height: 30),
                Text(
                  "Seats needed?",
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
                ),
                SizedBox(height: 30),
                Container(
                  width: 100,
                  // color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          if (counter > 1) {
                            setState(() {
                              counter--;
                            });
                          }
                        },
                        child: Container(

                          child: CircleAvatar(
                            child: Text("-"),
                            radius: 11,
                            // backgroundColor: Colors.green,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(counter.toString(),
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (counter < 4) {
                            setState(() {
                              counter++;
                            });
                          }
                        },
                        child: CircleAvatar(
                          child: Text("+"),
                          radius: 11,
                          // backgroundColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
          Container(child: CustomizedButton(context, "Search")
          , margin: EdgeInsets.only(bottom: 30),)
        ],
      ),
    );
  }
}
