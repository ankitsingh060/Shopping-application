import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_application/features/auth/screen/auth_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings)
{
  switch (routeSettings.name){
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
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