import 'package:flutter/material.dart';
import 'package:flutter_components/theme/theme.dart';


class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child:  Column(children: [
        const ListTile(
          leading: Icon(Icons.photo_album, color: AppTheme.primaryColor,),
          title: Text("Soy un título"),
          subtitle: Text("Anim occaecat deserunt incididunt velit est culpa occaecat laboris excepteur nulla anim. Velit sunt deserunt ipsum exercitation in cillum exercitation velit in eiusmod consequat. Veniam sint et magna proident mollit et eiusmod aliquip exercitation reprehenderit."),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                child: const Text('Cancelar'),
                onPressed: () {},
              ),
              TextButton(
                child: const Text('Ok'),
                onPressed: () {},
              ),
            ],
          ),
        )
      ],)
    );
  }
}