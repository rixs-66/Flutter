import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  //PROPEIDADES

  @override
  Widget build(BuildContext context) {
    //variables
    const fontSize30 = TextStyle(fontSize: 30, color: Colors.white);
    int sumar = 1;
    //contenido
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Contador de taps"),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Numero de clicks", style: fontSize30),
            Text('clicks: $sumar', style: fontSize30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          sumar++;
        },
      ),
    );
  }
}
