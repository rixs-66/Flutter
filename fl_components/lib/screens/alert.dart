import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);
  //alerta ios
  void displayalertIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text('hola mundo'),
        content: Column(mainAxisSize: MainAxisSize.min, children: const [
          Text("Este es el conetido"),
          SizedBox(
            height: 10,
          ),
          FlutterLogo(
            size: 100,
          )
        ]),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                "Cancelar",
                style: TextStyle(color: Colors.red),
              )),
          TextButton(
              onPressed: () => Navigator.pop(context), child: const Text("OK"))
        ],
      ),
    );
  }

  //alerta android
  void displayalert(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: const Text("hola mundo"),
        elevation: 0,
        content: Column(mainAxisSize: MainAxisSize.min, children: const [
          Text("Este es el conetido"),
          SizedBox(
            height: 10,
          ),
          FlutterLogo(
            size: 100,
          )
        ]),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancelar"))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Platform.isAndroid
              ? displayalert(context)
              : displayalert(context),
          style: ElevatedButton.styleFrom(foregroundColor: Colors.white),
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "mostrar alerta",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
