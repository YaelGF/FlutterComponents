import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final Map<String, dynamic> formData = {
      'nombre':     'Yael',
      'apellido':   'Yael',
      'correo':     'Yael',
      'password':   'Yael',
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Inputs y Forms')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: formKey,
            child: Column(
              children:  [
                const CustomIputField( labelText: "Nombre", hintText: "Nombre del usuario", icon: Icons.person, suffixIcon: Icons.verified_user_outlined),
                const SizedBox(height: 30),
                const CustomIputField( labelText: "Apellido", hintText: "Apellido del usuario", icon: Icons.person, suffixIcon: Icons.verified_user_outlined),
                const SizedBox(height: 30),
                const CustomIputField( labelText: "Correo", hintText: "Correo del usuario", icon: Icons.person, suffixIcon: Icons.verified_user_outlined, keyboardType: TextInputType.emailAddress),
                const SizedBox(height: 30),
                const CustomIputField( labelText: "Contraseña", hintText: "Correo del usuario", icon: Icons.person, suffixIcon: Icons.verified_user_outlined, obscureText: true,),
                const SizedBox(height: 30),
                ElevatedButton(onPressed: (){
                  if (!formKey.currentState!.validate()){

                    FocusScope.of(context).requestFocus( FocusNode() );

                    print("Formulario invalido");
                    return;
                  }
                  print(formData);
                }, 
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.save),
                        SizedBox(width: 10),
                        Text("Guardar", style: TextStyle(fontSize: 20))
                      ],
                    )
                  )
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
