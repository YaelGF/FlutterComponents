import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context){

    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context){
        return AlertDialog(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: const Text("Titulo en widget"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text("Contenido de la alerta para android"),
              SizedBox(height: 20),
              FlutterLogo(size: 100)
            ]
          ),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: const Text("Cancelar")),
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: const Text("Aceptar")),
          ],
        );
      });
  }

  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(barrierDismissible: false, context: context, builder: (context){
      return CupertinoAlertDialog(
        title: const Text("Titulo Cupertino"),
        content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text("Contenido de la alerta en cupertino"),
              SizedBox(height: 20),
              FlutterLogo(size: 100)
            ]
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text("Cancelar", style: TextStyle( color: Colors.red),)),
          TextButton(onPressed: () => Navigator.pop(context), child: const Text("Aceptar",)),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
 crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          
          ElevatedButton(
          onPressed: (){
            //displayDialogAndroid(context);
            displayDialogIOS(context);
          },
          child: const Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), child: Text("Mostrar Alerta Forma IOS"),)),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () { displayDialogAndroid(context); }, child: const Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), child: Text("Mostrar Alerta Forma Android"),)),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () => Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIOS(context), child: const Padding(padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10), child: Text("Mostrar Alerta Dependiendo tu dispositivo"),))
          ],
          )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
