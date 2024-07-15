import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_image.dart';
import 'package:portfolio/components/animated_loading_text.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedImage(
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: padding,
            ),
            AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}
