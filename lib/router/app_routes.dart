import 'package:deneb_v2/screens/home_screen.dart';
import 'package:deneb_v2/screens/options.dart';
import 'package:flutter/material.dart';
import 'package:deneb_v2/screens/screens.dart';

import '../models/menu_option.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'add',
        icon: Icons.abc_rounded,
        name: 'Add planets screen',
        screen: Add_planet()),
    MenuOption(
        route: 'starships',
        icon: Icons.ads_click_rounded,
        name: 'Starships',
        screen: ShipScreen()),
    MenuOption(
        route: 'holes',
        icon: Icons.circle_sharp,
        name: 'Holes',
        screen: HoleScreen()),
    MenuOption(
        route: 'travel',
        icon: Icons.place_sharp,
        name: 'Travels',
        screen: TravelScreen()),
    //MenuOption(route: 'home', icon: Icons.home, name: 'Home', screen: const HomeScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => HomeScreen2()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => HomeScreen2());
  }
}
