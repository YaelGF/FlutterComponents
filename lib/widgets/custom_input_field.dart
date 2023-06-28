import 'package:flutter/material.dart';

class CustomIputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final TextInputType? keyboardType;
  final IconData? icon;
  final IconData? suffixIcon;
  final bool obscureText;
  
  final String formProperty;
  final Map<String, String> formData;


  const CustomIputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formData
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: "",
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) => formData[formProperty] = value,
      validator:(value) {
        if ( value == null) return 'El campo es obligatorio';
        return value.length < 3 ? 'El campo debe tener al menos 3 caracteres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: '90 caracteres',
        //prefix: Icon(Icons.verified_user_outlined),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
        /*
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.indigo)
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          )
        )*/
      ),
    );
  }
}