import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'menu_page.dart';
import 'navigation.dart';

Future<void> main() async {
  runApp(MyApp());
  Map<PermissionGroup, PermissionStatus> permissions =
  await PermissionHandler().requestPermissions([PermissionGroup.location]);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Maps Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MenuPage());
  }
}
