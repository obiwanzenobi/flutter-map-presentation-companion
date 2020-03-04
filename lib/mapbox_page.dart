//import 'dart:async';
//
//import 'package:flutter/material.dart';
//import 'package:mapbox_gl/mapbox_gl.dart';
//
//class MapboxMapsPage extends StatefulWidget {
////  static final CameraPosition _initialCamera = CameraPosition(
////      bearing: 192.8334901395799,
////      target: LatLng(50.264314, 19.023824),
////      tilt: 59.440717697143555,
////      zoom: 19.151926040649414);
//
//  static Route<dynamic> route() {
//    return MaterialPageRoute(
//      builder: (_) => MapboxMapsPage(),
//    );
//  }
//
//  @override
//  _MapboxMapsPageState createState() => _MapboxMapsPageState();
//}
//
//class _MapboxMapsPageState extends State<MapboxMapsPage> {
//  MapboxMapController mapController;
//
//  void _onMapCreated(MapboxMapController controller) {
//    mapController = controller;
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: SafeArea(
//        child: Stack(
//          children: [
//            Transform.scale(
//              child: MapboxMap(
//                onMapCreated: _onMapCreated,
//                initialCameraPosition:
//                const CameraPosition(target: LatLng(0.0, 0.0)),
//              ), scale: 1.0,
//            ),
//            Center(child: Text("Maps overlaying text"))
//          ],
//        ),
//      ),
//    );
//  }
//}
