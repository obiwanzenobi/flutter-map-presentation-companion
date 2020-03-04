import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class FlutterMapNonCachingPage extends StatefulWidget {
  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (_) => FlutterMapNonCachingPage(),
    );
  }

  @override
  _FlutterMapNonCachingPageState createState() => _FlutterMapNonCachingPageState();
}

class _FlutterMapNonCachingPageState extends State<FlutterMapNonCachingPage> {
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
            urlTemplate: "https://{s}.tile.openstreetmap.de/{z}/{x}/{y}.png",

//            urlTemplate: "https://api.mapbox.com/styles/v1/rucuriousyet/ck15ozlow33tj1cph5cpt2y79/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoicnVjdXJpb3VzeWV0IiwiYSI6ImNpdm83MjFwYzAxMnQyeXFyaDR0ZmFxbjkifQ.Ak3DcaxXheiKmTW2TIKY9A",
            subdomains: ['a', 'b', 'c'],
            tileProvider: NonCachingNetworkTileProvider(),
          )
        ],
      ),
    );
  }
}
