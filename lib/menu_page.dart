import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fmaps/flutter_maps/flutter_map.dart';
import 'package:fmaps/flutter_maps/flutter_maps_menu_page.dart';
import 'package:fmaps/google_maps/google_maps_menu_page.dart';
import 'package:fmaps/google_maps/google_maps_page.dart';
import 'package:fmaps/flutter_maps/flutter_map_markers.dart';
import 'package:fmaps/mapbox_page.dart';

class MenuPage extends StatelessWidget {
  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (_) => MenuPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              MaterialButton(
                child: Text("Google maps"),
                onPressed: () {
                  Navigator.of(context).push(GoogleMapsMenuPage.route());
                },
              ),
              MaterialButton(
                child: Text("Flutter maps"),
                onPressed: () {
                  Navigator.of(context).push(FlutterMapMenuPage.route());
                },
              ),
//              MaterialButton(
//                child: Text("Mapbox maps"),
//                onPressed: () {
//                  Navigator.of(context).push(MapboxMapsPage.route());
//                },
//              )
            ],
          ),
        ),
      ),
    );
  }
}
