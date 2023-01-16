import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //PROPEIDADES
  int sumar = 0;

  void incrementar() {
    sumar++;
    setState(() {});
  }

  void reset() {
    sumar = 0;
    setState(() {});
  }

  void sumar100() {
    sumar += 100;
    setState(() {});
  }

  void restar() {
    sumar--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //VARIABLES
    const fontSize30 = TextStyle(fontSize: 30, color: Colors.white);

    //CONTENIDO
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Counter stateful"),
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
      floatingActionButton: CustomFloatingButtons(
        incrementarFN: incrementar,
        resetearFN: reset,
        incrementar100FN: sumar100,
        restarFN: restar,
      ),
    );
  }
}

class CustomFloatingButtons extends StatelessWidget {
  final Function incrementarFN;
  final Function resetearFN;
  final Function incrementar100FN;
  final Function restarFN;

  const CustomFloatingButtons({
    Key? key,
    required this.incrementarFN,
    required this.resetearFN,
    required this.incrementar100FN,
    required this.restarFN,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => incrementarFN(),
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: () => resetearFN(),
          child: const Icon(Icons.replay_outlined),
        ),
        FloatingActionButton(
          onPressed: () => incrementar100FN(),
          child: const Text("+ 100"),
        ),
        FloatingActionButton(
          onPressed: () => restarFN(),
          child: const Icon(Icons.remove),
        )
      ],
    );
  }
}
