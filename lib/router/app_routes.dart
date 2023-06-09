import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = "/home";

  static  final menuOption = <MenuOption>[
    /*MenuOption(
      route: "/home",
      icon: Icons.home,
      name: "Home Screen",
      screen: const HomeScreen(),
    ),*/
    MenuOption(
      route: "/listview",
      icon: Icons.list,
      name: "ListView tipe 1",
      screen: const ListViewScreen(),
    ),
    MenuOption(
      route: "/listview2",
      icon: Icons.list,
      name: "ListView tipe 2",
      screen: const ListView2Screen(),
    ),
    MenuOption(
      route: "/alert",
      icon: Icons.notifications,
      name: "Alert Screen",
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: "/card",
      icon: Icons.card_giftcard,
      name: "Card Screen",
      screen: const CardScreen(),
    ),
    MenuOption(
      route: "/avatar", 
      icon: Icons.supervised_user_circle_outlined, 
      name: "Avatar Screen", 
      screen: const AvatarScreen()
    ),
    MenuOption(
      route: "/animated", 
      icon: Icons.animation, 
      name: "Animated Screen", 
      screen: const AnimatedScreen()
    ),
    MenuOption(
      route: "/inpunts", 
      icon: Icons.input_outlined, 
      name: "inputs Screen", 
      screen: const InputsScreen()
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({initialRoute: (_) => const HomeScreen()});

    for (final element in menuOption) {
      appRoutes.addAll({element.route: (_) => element.screen});
    }

    return appRoutes;
  }

  /*static Map<String, Widget Function(BuildContext)> routes = {
    "/home"      : (_) => const HomeScreen(),
    "/listview"  : (_) => const ListViewScreen(),
    "/listview2" : (_) => const ListView2Screen(),
    "/alert"     : (_) => const AlertScreen(),
    "/card"      : (_) => const CardScreen(),
  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) => const AlertScreen()
    );
  }
}
