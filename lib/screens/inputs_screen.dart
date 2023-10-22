import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final Map<String, String> formData = {
      'first_name': 'Yael',
      'last_name':  'Yael',
      'email':      'Yael',
      'password':   'Yael',
      'role':       'Yael',
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
                CustomIputField( labelText: "Nombre", hintText: "Nombre del usuario", icon: Icons.person, suffixIcon: Icons.verified_user_outlined, formProperty: 'first_name', formData: formData),
                const SizedBox(height: 30),
                CustomIputField( labelText: "Apellido", hintText: "Apellido del usuario", icon: Icons.person, suffixIcon: Icons.verified_user_outlined, formProperty: 'last_name', formData: formData),
                const SizedBox(height: 30),
                CustomIputField( labelText: "Correo", hintText: "Correo del usuario", icon: Icons.person, suffixIcon: Icons.verified_user_outlined, keyboardType: TextInputType.emailAddress, formProperty: 'email', formData: formData),
                const SizedBox(height: 30),
                CustomIputField( labelText: "Contraseña", hintText: "Correo del usuario", icon: Icons.person, suffixIcon: Icons.verified_user_outlined, obscureText: true, formProperty: 'password', formData: formData),
                const SizedBox(height: 30),

                DropdownButtonFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    labelText: "Opciones",
                    hintText: "Seleccione una opcion",
                    icon: const Icon(Icons.list)
                  ),
                  items: const[
                    DropdownMenuItem(value: "Admin", child: Text("Administrador")),
                    DropdownMenuItem(value: "User", child: Text("Usuario")),
                    DropdownMenuItem(value: "Superuser", child: Text("Super usuario")),
                    DropdownMenuItem(value: "Developer", child: Text("Desarrollador")),
                  ], 
                  onChanged: 
                    (value) {
                      formData['role'] = value.toString();
                    }
                ),

                const SizedBox(height: 30),

                ElevatedButton(onPressed: (){
                  if (!formKey.currentState!.validate()){
                    return;
                  }

                  formKey.currentState!.save();
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
