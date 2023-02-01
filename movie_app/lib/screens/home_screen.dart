import 'package:flutter/material.dart';
import 'package:movie_app/widgets/card_swiper.dart';
import 'package:movie_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peliculas en cartelera'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: const [
          CardsSwiper(),
          SizedBox(
            height: 30,
          ),
          MovieSlider(),
        ],
      )),
    );
  }
}
