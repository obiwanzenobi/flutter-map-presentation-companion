import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsMasksPage extends StatefulWidget {
  static final CameraPosition _initialCamera = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(50.264314, 19.023824),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (_) => GoogleMapsMasksPage(),
    );
  }

  @override
  _GoogleMapsMasksPageState createState() => _GoogleMapsMasksPageState();
}

class _GoogleMapsMasksPageState extends State<GoogleMapsMasksPage> {
  GoogleMapController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ShaderMask(
            child: GoogleMap(
              mapType: MapType.normal,
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              onMapCreated: (GoogleMapController controller) {
                _controller = controller;
              },
              initialCameraPosition: GoogleMapsMasksPage._initialCamera,
            ),
            shaderCallback: (rect) {
              return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue, Colors.red]).createShader(rect);
            },
          ),
          Center(child: Text("test"))
        ],
      ),
    );
  }
}
