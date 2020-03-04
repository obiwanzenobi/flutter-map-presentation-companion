import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:fmaps/flutterstarter.dart';
import 'package:fmaps/main.dart';
import 'package:latlong/latlong.dart';

class FlutterMapAppMarkersPage extends StatefulWidget {
  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (_) => FlutterMapAppMarkersPage(),
    );
  }

  @override
  _FlutterMapAppMarkersPageState createState() => _FlutterMapAppMarkersPageState();
}

class _FlutterMapAppMarkersPageState extends State<FlutterMapAppMarkersPage> {
  static final center = LatLng(50.264314, 19.023824);
  var controller = MapController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        mapController: controller,
        options: MapOptions(
          center: center,
        ),

        layers: [
          TileLayerOptions(

            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: ['a', 'b', 'c'],
          ),
          new MarkerLayerOptions(
            markers: [
              new Marker(
                width: 180.0,
                height: 260.0,
                point: new LatLng(50.264314, 19.023824),
                builder: (ctx) => new Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.blue, width: 8.0)),
                  child: new MyApp(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
