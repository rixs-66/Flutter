import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: 'home',
        icono: Icons.home,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOptions(
        route: 'card',
        icono: Icons.card_membership,
        name: 'Card',
        screen: const CardScreen()),
    MenuOptions(
        route: 'listviews1',
        icono: Icons.list,
        name: 'ListView1',
        screen: const ListView1Screen()),
    MenuOptions(
        route: 'listviews2',
        icono: Icons.list_alt,
        name: 'Listview2',
        screen: const ListView2Screen()),
    MenuOptions(
        route: 'alert',
        icono: Icons.campaign,
        name: 'Alert',
        screen: const AlertScreen())
  ];

  /* static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'card': (BuildContext context) => const cardScreen(),
    'listviews1': (BuildContext context) => const ListView1Screen(),
    'listviews2': (BuildContext context) => const ListView2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
  }; */
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
