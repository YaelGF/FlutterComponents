import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inputs y Forms')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                autofocus: false,
                initialValue: "",
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  print(value);
                },
                validator:(value) {
                  if ( value == null) return 'El campo es obligatorio';
                  return value.length < 3 ? 'El campo debe tener al menos 3 caracteres' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const  InputDecoration(
                  hintText: 'Nombre',
                  labelText: 'Nombre',
                  helperText: 'Sólo letras',
                  counterText: '90 caracteres',
                  //prefix: Icon(Icons.verified_user_outlined),
                  suffixIcon: Icon(Icons.group_outlined),
                  icon: Icon(Icons.assignment_ind_outlined),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.indigo, width: 2)
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                    )
                  )
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}