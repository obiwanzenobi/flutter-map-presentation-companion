import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fmaps/flutter_maps/flutter_map.dart';
import 'package:fmaps/flutter_maps/flutter_map_app_markers.dart';
import 'package:fmaps/flutter_maps/flutter_map_without_caching.dart';
import 'package:fmaps/google_maps/google_maps_menu_page.dart';
import 'package:fmaps/google_maps/google_maps_page.dart';
import 'package:fmaps/flutter_maps/flutter_map_markers.dart';

class FlutterMapMenuPage extends StatelessWidget {
  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (_) => FlutterMapMenuPage(),
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
                child: Text("Flutter map"),
                onPressed: () {
                  Navigator.of(context).push(FlutterMapPage.route());
                },
              ),
              MaterialButton(
                child: Text("Flutter counter marker"),
                onPressed: () {
                  Navigator.of(context).push(FlutterMapMarkersPage.route());
                },
              ),
              MaterialButton(
                child: Text("Flutter app marker"),
                onPressed: () {
                  Navigator.of(context).push(FlutterMapAppMarkersPage.route());
                },
              ),
              MaterialButton(
                child: Text("Flutter map non caching"),
                onPressed: () {
                  Navigator.of(context).push(FlutterMapNonCachingPage.route());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
