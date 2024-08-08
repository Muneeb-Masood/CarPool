import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'dart:ui';
import 'package:mapbox_gl_platform_interface/mapbox_gl_platform_interface.dart';
class Maps extends StatelessWidget {
  const Maps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MapBox Demo"),
      ),
      body: MapboxMap(
        accessToken: 'pk.eyJ1IjoibXVuZWVibWFzb29kIiwiYSI6ImNsemt3NThuazE1Y3Aya3NhNGNnc2Jvc2cifQ.brU5TO03wxobA1RHZkOwyA',
        initialCameraPosition: CameraPosition(
          target: LatLng(37.7749, -122.4194),
          zoom: 14
    )));
  }
}
