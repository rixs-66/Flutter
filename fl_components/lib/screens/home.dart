import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //PROPIEDADES
  const HomeScreen({super.key});

//vARIABLES

  @override
  Widget build(BuildContext context) {
    final menuoptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Componenetes en flutter"),          
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, menuoptions[index].route);
                  },
                  title: Text(menuoptions[index].name),
                  leading: Icon(
                    menuoptions[index].icono,
                  ),
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuoptions.length));
  }
}
