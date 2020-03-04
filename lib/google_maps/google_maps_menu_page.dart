import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fmaps/flutter_maps/flutter_map.dart';
import 'package:fmaps/google_maps/google_maps_camera_page.dart';
import 'package:fmaps/google_maps/google_maps_circle.dart';
import 'package:fmaps/google_maps/google_maps_click.dart';
import 'package:fmaps/google_maps/google_maps_markers_page.dart';
import 'package:fmaps/google_maps/google_maps_page.dart';
import 'package:fmaps/google_maps/google_maps_page_masks.dart';
import 'package:fmaps/google_maps/google_maps_place_marker.dart';
import 'package:fmaps/google_maps/google_maps_polygon.dart';
import 'package:fmaps/google_maps/google_maps_polylines.dart';
import 'package:fmaps/google_maps/google_maps_style_page.dart';
import 'package:fmaps/google_maps/google_maps_transformations_page.dart';
import 'package:fmaps/flutter_maps/flutter_map_markers.dart';

class GoogleMapsMenuPage extends StatelessWidget {
  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (_) => GoogleMapsMenuPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Google maps"),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                MaterialButton(
                  child: Text("Normal map"),
                  onPressed: () {
                    Navigator.of(context).push(GoogleMapsPage.route());
                  },
                ),
                MaterialButton(
                  child: Text("Camera operations"),
                  onPressed: () {
                    Navigator.of(context).push(GoogleMapsCameraPage.route());
                  },
                ),
                MaterialButton(
                  child: Text("Map clicks"),
                  onPressed: () {
                    Navigator.of(context).push(GoogleMapClickPage.route());
                  },
                ),
                MaterialButton(
                  child: Text("Simple markers"),
                  onPressed: () {
                    Navigator.of(context).push(GoogleMapsMarkerIconsPage.route());
                  },
                ),
                MaterialButton(
                  child: Text("Place markers"),
                  onPressed: () {
                    Navigator.of(context).push(GoogleMapsPlaceMarkerPage.route());
                  },
                ),
                MaterialButton(
                  child: Text("Place circle"),
                  onPressed: () {
                    Navigator.of(context).push(GoogleMapsPlaceCirclePage.route());
                  },
                ),
                MaterialButton(
                  child: Text("Place polygon"),
                  onPressed: () {
                    Navigator.of(context).push(GoogleMapsPlacePolygonPage.route());
                  },
                ),
                MaterialButton(
                  child: Text("Place polyline"),
                  onPressed: () {
                    Navigator.of(context).push(GoogleMapsPlacePolylinePage.route());
                  },
                ),
                MaterialButton(
                  child: Text("Widget Transformations"),
                  onPressed: () {
                    Navigator.of(context).push(GoogleMapsTransformationsPage.route());
                  },
                ),
                MaterialButton(
                  child: Text("Google map masks"),
                  onPressed: () {
                    Navigator.of(context).push(GoogleMapsMasksPage.route());
                  },
                ),
                MaterialButton(
                  child: Text("Google map styles"),
                  onPressed: () {
                    Navigator.of(context).push(GoogleMapsStylesPage.route());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
