import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;

class GoogleMapsStylesPage extends StatefulWidget {
  static final CameraPosition _initialCamera = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(50.264314, 19.023824),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (_) => GoogleMapsStylesPage(),
    );
  }

  @override
  _GoogleMapsStylesPageState createState() => _GoogleMapsStylesPageState();
}

class _GoogleMapsStylesPageState extends State<GoogleMapsStylesPage> {
  GoogleMapController _controller;
  String _mapStyle;

  @override
  void initState() {
    super.initState();
    rootBundle.loadString('assets/gmaps_style.txt').then((string) {
      _mapStyle = string;
    });
  }

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
            _controller.setMapStyle(_mapStyle);
          },
          initialCameraPosition: GoogleMapsStylesPage._initialCamera,
        ),
      ),
    );
  }
}
