import 'package:flutter/material.dart';
import 'package:plant_app/app/screens/authentication/presentation/screens/auth_screen.dart';
import 'package:plant_app/app/screens/home/home_screen.dart';

class PlantApp extends StatelessWidget {
  const PlantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Plant App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const AuthScreen() //HomeScreen(),
        );
  }
}
