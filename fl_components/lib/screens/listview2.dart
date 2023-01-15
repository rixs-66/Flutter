
import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
//PROPIEDADES
  final items = const ['Gears of war 3', 'super smash', 'kirby'];

  const ListView2Screen({Key? key}) : super(key: key);

//Variables

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:        
         AppBar(
          elevation: 0,          
          title: const Text("LISTVIEW 2")),
        body: ListView.separated(
          itemCount: items.length,
          itemBuilder: (context, index) => ListTile(
            leading: const Icon(Icons.adb),
            title: Text(items[index]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo,),
            onTap: () {
              
              
            },
          ),
          separatorBuilder: (_, index) => const Divider(),
        ));
  }
}
