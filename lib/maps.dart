import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'dart:ui';
import 'package:mapbox_gl_platform_interface/mapbox_gl_platform_interface.dart';
import 'package:http/http.dart' as http;
class Maps extends StatefulWidget {
   Maps({super.key});

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  late double ? lat ;
  late double ? long;
  late Widget MapBoxbody;
  void loadMapBody () async{
    final Location location = Location();
    PermissionStatus permission = await location.hasPermission();
    if (permission == PermissionStatus.denied) {
      permission = await location.requestPermission();
      if (permission == PermissionStatus.denied) {
        print("Permission denied");

        // return;
      }
      else if (permission == PermissionStatus.granted) {
        print("Permission granted");

      }
    }
    else{
      print("Permission already granted");
     LocationData data = await location.getLocation();
      print("latitude: ${data.latitude}, longitude: ${data.longitude}");
      lat = data.latitude;
      long = data.longitude;
    }
    final Uri url = await Uri.https(
      'api.mapbox.com',
      '/directions/v5/mapbox/driving/67.0695,24.8411;67.0904,24.9176',
      {
        'steps': 'true',
        'voice_instructions': 'true',
        'banner_instructions': 'true',
        'voice_units': 'imperial',
        'waypoint_names': 'Home;Work',
        'access_token': 'pk.eyJ1IjoibXVuZWVibWFzb29kIiwiYSI6ImNsem12bzJ3ODBoa2Uya3NpMGI2ajlpY3YifQ.FM56jQiGqOz6uDwYCGzf4g',
      },
    );
    final response = await http.get(url);
    if(response.statusCode == 200){

      // final jsonResponse = json.decode(response.body);
      log((response.body));




    }

    MapBoxbody = await RenderBody(lat , long);

    setState(() {
      loading = false;
    });
  }
    bool loading = true ;
  @override
  void initState()  {





      loadMapBody();


    super.initState();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MapBox Demo"),
      ),
      body: loading ? Center(child: CircularProgressIndicator() ): MapBoxbody
      );
  }
}

Future<Widget> RenderBody(double ? lat , double ? long) async{
  return await MapboxMap(
      accessToken: 'pk.eyJ1IjoibXVuZWVibWFzb29kIiwiYSI6ImNsemt3NThuazE1Y3Aya3NhNGNnc2Jvc2cifQ.brU5TO03wxobA1RHZkOwyA',
      initialCameraPosition: CameraPosition(
          target: LatLng(lat!, long!),
          zoom: 14
      ));



}



