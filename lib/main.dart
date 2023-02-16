import 'package:flutter/material.dart';
import 'package:shopping_application/constants/global_variable.dart';
import 'package:shopping_application/features/auth/screen/auth_screen.dart';
import 'package:shopping_application/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'shooping application',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          )
        )
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: Scaffold(
        // appBar: AppBar(
        //
        //   title: Text("Shooping app"),
        // ),
          body: AuthScreen()
      )
    );
  }
}

