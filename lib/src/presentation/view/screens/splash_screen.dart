import 'dart:async';

import 'package:crafty_app/src/presentation/view/screens/starter_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const StarterScreen(),
        ),
      );
    });
    return Scaffold(
      backgroundColor: const Color(0xFF0A5D8F),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/icon.png",
              width: 200,
              height: 200,
            ),
          ),
          const SizedBox(
            height: 150,
          )
        ],
      ),
    );
  }
}
