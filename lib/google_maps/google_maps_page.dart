import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsPage extends StatefulWidget {
  static final CameraPosition _initialCamera = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(50.264314, 19.023824),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (_) => GoogleMapsPage(),
    );
  }

  @override
  _GoogleMapsPageState createState() => _GoogleMapsPageState();
}

class _GoogleMapsPageState extends State<GoogleMapsPage> {
  GoogleMapController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          mapType: MapType.normal,
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          onMapCreated: (GoogleMapController controller) {
            _controller = controller;
          },
          initialCameraPosition: GoogleMapsPage._initialCamera,
        ),
      ),
    );
  }
}
