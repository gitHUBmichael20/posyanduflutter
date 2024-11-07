import 'package:flutter/material.dart';
import 'package:posyandu/screen/splash_screen.dart';
import 'package:posyandu/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: Future.delayed(const Duration(seconds: 3)),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          // Check if the future is still being waited on
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen(); // Display Splashscreen while waiting
          } else {
            return const HomeScreen(); // 
            // return const SplashScreen
            // return const beranda();
          }
        },
      ),
    );
  }
}