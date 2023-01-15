import 'package:flutter/material.dart';

class MenuOptions {
  final String route;
  final IconData icono;
  final String name;
  final Widget screen;

  MenuOptions(
      {required this.route,
      required this.icono,
      required this.name,
      required this.screen});
}
