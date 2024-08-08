import 'package:car_pool_ned/view/button.dart';
import 'package:car_pool_ned/view/constant.dart';
import 'package:car_pool_ned/view/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class MainLogoScreen extends StatelessWidget {
  const MainLogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
return Scaffold(
  body:Center(
    child: Column(
      children: [
     Expanded(child: Image(image: Svg("assets/images/logo.svg"))),
       CustomizedButton(context , "Sign Up"),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>
                Login()));
          },
          child: Text("Login" , style: TextStyle(
            color: Colors.blueAccent,
          
          )
          ),
        )


      ],
    ),
  )
);
  }
}
