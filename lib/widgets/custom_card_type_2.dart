import 'package:flutter/material.dart';
import 'package:flutter_components/theme/theme.dart';

class CustomCardType2 extends StatelessWidget {

  final String imgeURL;
  final String? name;

  const CustomCardType2({Key? key, required this.imgeURL, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 30,
        shadowColor: AppTheme.primaryColor.withOpacity(0.3),
        child: Column(
          children:[
            FadeInImage(
              image: NetworkImage(imgeURL), 
              placeholder: const AssetImage("assets/jar-loading.gif"),
              width: double.infinity,
              height: 260,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 200),
              ),
              if ( name != null )
                Container(
                  alignment: AlignmentDirectional.centerEnd,
                  padding: const EdgeInsets.only(right: 20, top: 10,bottom: 10),
                  child:  Text(name!)
                )
            ],
        ));
  }
}
