import 'package:flutter/material.dart';
import 'package:hello_world/login_page.dart';

import 'app_controller.dart';
import 'home_page.dart';
import 'challenge_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (BuildContext context, Widget child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primarySwatch: Colors.deepPurple,
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light),
            initialRoute: '/',
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => HomePage(),
              '/challenge': (context) => ChallengePage(),
            } // Widget Stateful
            );
      },
    );
  }
}


