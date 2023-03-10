import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_application/features/admin/screen/add_product_screen.dart';
import 'package:shopping_application/features/auth/screen/auth_screen.dart';
import 'common/widgets/bottom_bar.dart';
import 'features/home/Screen/home_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings)
{
  switch (routeSettings.name){
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );

    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );

    case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomBar(),
      );

      //Add - product the router
    case AddProductScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddProductScreen(),
      );


    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("Screen does not Exist"),
          ),
        )
      );

  }
}