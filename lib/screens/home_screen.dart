import 'package:flutter/material.dart';
import 'package:fl_components/router/router.dart';
import 'package:flutter_components/theme/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
      final menuOption = AppRoutes.menuOption;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Components App'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(menuOption[index].name),
                leading: Icon(menuOption[index].icon, color: AppTheme.primaryColor),
                onTap: () {
                  Navigator.pushNamed(context, menuOption[index].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOption.length),
    );
  }
}
