import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
//propiedades
  double _width = 50;
  double _hight = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);

  void obChangeShape() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('animated screen')),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOutCubic,
          width: _width,
          height: _hight,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final random = Random();
          _width = random.nextInt(300).toInt() + 70;
          _hight = random.nextInt(300).toInt() + 70;
          _color = Color.fromRGBO(
              random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
          _borderRadius =
              BorderRadius.circular(random.nextInt(100).toDouble() + 10);
          setState(() {});
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
