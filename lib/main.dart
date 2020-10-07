import 'package:contacttracingprototype/login.dart';
import 'package:contacttracingprototype/nearby_interface.dart';
import 'package:contacttracingprototype/registration.dart';
import 'package:contacttracingprototype/splash_page.dart';
import 'package:contacttracingprototype/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'splash_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        NearbyInterface.id: (context) => NearbyInterface(),
      },
    );
  }
}
