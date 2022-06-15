import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stitch_vine/app/screens/splash_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: SplashScreen(),
    );
  }
}


