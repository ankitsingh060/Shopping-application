import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_application/constants/global_variable.dart';
import 'package:shopping_application/features/auth/screen/auth_screen.dart';
import 'package:shopping_application/features/auth/services/auth_services.dart';
import 'package:shopping_application/router.dart';
import 'package:shopping_application/userProvider/user_provider.dart';

import 'common/widgets/bottom_bar.dart';

void main() {
  runApp(MultiProvider(
       providers: [
         ChangeNotifierProvider(
           create: (context) => UserProvider(),
         )
       ]
      ,child: const MyApp()
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'shooping application',
      debugShowCheckedModeBanner:false,
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
      home: Provider.of<UserProvider>(context).user.token.isNotEmpty
          ? const BottomBar()
          : const AuthScreen(),
    );
  }
}

