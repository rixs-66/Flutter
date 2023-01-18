import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      onChanged: (value) {
        print(value);
      },
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo de 3 leras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        hintText: 'nombre de usuario',
        labelText: 'Nombre',
        helperText: 'solo letras',
        counterText: '3 caracteres',
        suffixIcon: Icon(Icons.supervised_user_circle),
        prefixIcon: Icon(Icons.person),
      ),
    );
  }
}
