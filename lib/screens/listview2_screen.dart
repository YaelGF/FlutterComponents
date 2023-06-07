import 'package:flutter/material.dart';
import 'package:fl_components/theme/theme.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

  final games = const ["GTA", "FIFA", "COD", "PUBG", "FORTNITE", "MINECRAFT"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListViewScreen'),
        ),
        body: ListView.separated(
            itemCount: games.length,
            itemBuilder: (context, index) => ListTile(
                  title: Text(games[index]),
                  subtitle: const Text('Game'),
                  leading: const Icon(Icons.games, color: AppTheme.primaryColor,),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppTheme.primaryColor,
                  ),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(games[index]),
                      duration: const Duration(milliseconds: 100),
                    ));
                  },
                ),
            separatorBuilder: (_, __) => const Divider()));
  }
}
