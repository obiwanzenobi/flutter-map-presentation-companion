import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsCameraPage extends StatefulWidget {
  static final CameraPosition _initialCamera = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(50.264314, 19.023824),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (_) => GoogleMapsCameraPage(),
    );
  }

  @override
  _GoogleMapsCameraPageState createState() => _GoogleMapsCameraPageState();
}

class _GoogleMapsCameraPageState extends State<GoogleMapsCameraPage> {
  GoogleMapController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton(
            child: Text("1"),
            heroTag: "1",
            onPressed: () {
              _controller.animateCamera(CameraUpdate.newCameraPosition(
                CameraPosition(
                  bearing: 192.8334901395799,
                  target: LatLng(50.284314, 19.123824),
                  tilt: 0.45,
                  zoom: 16.25,
                ),
              ));
            },
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            child: Text("2"),
            heroTag: "2",
            onPressed: () {
              _controller.animateCamera(CameraUpdate.newCameraPosition(GoogleMapsCameraPage._initialCamera));
            },
          )
        ],
      ),
      body: Stack(
        children: [
          Transform.scale(
            child: GoogleMap(
              mapType: MapType.normal,
              onMapCreated: (GoogleMapController controller) {
                _controller = controller;
              },
              initialCameraPosition: GoogleMapsCameraPage._initialCamera,
            ),
            scale: 1.0,
          ),
        ],
      ),
    );
  }
}
