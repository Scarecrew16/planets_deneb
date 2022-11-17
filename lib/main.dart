import 'package:deneb_v2/screens/add_planet_screen.dart';
import 'package:deneb_v2/screens/planet_info.dart';
import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF443E64),
      ),
      home: Planetinfo(),
    );
  }
}
