import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myformKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'firstname': 'ricardo',
      'last_name': 'Herrera',
      'email': 'ricardo@paradox-et.com',
      'password': '1234',
      'role': 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs and forms"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myformKey,
            child: Column(
              children: [
                const CustomTextField(
                  labelText: "Nombre",
                  hintText: "nombre del usuario",
                  icon: Icons.supervised_user_circle_outlined,
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomTextField(
                  labelText: "apellido",
                  hintText: "apellido del usuario",
                  icon: Icons.abc,
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomTextField(
                  labelText: "correo",
                  hintText: "apellido del usuario",
                  icon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomTextField(
                  labelText: "contraseña",
                  hintText: "contraseña del usuario",
                  icon: Icons.password,
                  status: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!myformKey.currentState!.validate()) {
                        print('formulario no valido');
                        return;
                      }

                      //* imprimir valores del formulario
                      print(formValues);
                    },
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('ENVIAR'))))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
