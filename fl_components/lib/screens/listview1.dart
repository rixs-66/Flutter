import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
//PROPIEDADES
  final items = const ['Gears of war 3', 'super smash', 'kirby'];

  const ListView1Screen({Key? key}) : super(key: key);

//Variables

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("LISTVIEW1"),        
        ),
        body: ListView(
          children: [
            ...items
                .map((games) => ListTile(
                      title: Text(games.toUpperCase()),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList()
            /* ListTile(
              leading:  ,
              title: Text("Item1"),
            ) */
          ],
        ));
  }
}
