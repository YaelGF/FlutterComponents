import 'package:flutter/material.dart';
import 'package:flutter_components/theme/theme.dart';


class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  final games = const ["GTA", "FIFA", "COD", "PUBG", "FORTNITE", "MINECRAFT"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListViewScreen'),
        ),
        body: ListView(
          children: [
            ...games.map((e) => ListTile(
                  title: Text(e),
                  subtitle: const Text('Game'),
                  leading: const Icon(Icons.games, color: AppTheme.primaryColor,),
                  trailing: const Icon(Icons.arrow_forward_ios, color: AppTheme.primaryColor,),
                ))
          ],
        ));
  }
}
