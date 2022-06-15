import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stitch_vine/app/onboarding_screen.dart';

import 'package:stitch_vine/core/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => OnboardingScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: KColor.secondaryColor,
        body: Center(
          child: Image(
            image: AssetImage('images/white_logo.png'),
          ),
        ));
  }
}
