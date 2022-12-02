import 'package:deneb_v2/screens/add_planet_screen.dart';
import 'package:deneb_v2/screens/planet_info.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:deneb_v2/firebase_options.dart';
import 'package:deneb_v2/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/home_screen.dart';
import 'screens/starships_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF443E64),
      ),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
