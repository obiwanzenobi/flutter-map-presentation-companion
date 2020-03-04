import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsTransformationsPage extends StatefulWidget {
  static final CameraPosition _initialCamera = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(50.264314, 19.023824),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (_) => GoogleMapsTransformationsPage(),
    );
  }

  @override
  _GoogleMapsTransformationsPageState createState() => _GoogleMapsTransformationsPageState();
}

class _GoogleMapsTransformationsPageState extends State<GoogleMapsTransformationsPage> {
  Completer<GoogleMapController> _controller = Completer();

  Offset _offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Transform( // Transform widget
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001) // perspective
            ..rotateX(0.01 * _offset.dy) // changed
            ..rotateY(-0.01 * _offset.dx), // changed
          alignment: FractionalOffset.center,
          child: GestureDetector( // new
            onPanUpdate: (details) => setState(() => _offset += details.delta),
            onDoubleTap: () => setState(() => _offset = Offset.zero),
            child: GoogleMap(
              mapType: MapType.normal,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              initialCameraPosition: GoogleMapsTransformationsPage._initialCamera,
            ),
          ),
        )
    );
  }
}
