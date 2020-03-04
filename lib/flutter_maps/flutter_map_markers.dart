import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:fmaps/flutterstarter.dart';
import 'package:latlong/latlong.dart';

class FlutterMapMarkersPage extends StatefulWidget {
  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (_) => FlutterMapMarkersPage(),
    );
  }

  @override
  _FlutterMapMarkersPageState createState() => _FlutterMapMarkersPageState();
}

class _FlutterMapMarkersPageState extends State<FlutterMapMarkersPage> {
  static final center = LatLng(50.264314, 19.023824);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          center: center,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: ['a', 'b', 'c'],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng(50.264314, 19.023824),
                builder: (ctx) => Container(
                  child: FlutterLogo(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
