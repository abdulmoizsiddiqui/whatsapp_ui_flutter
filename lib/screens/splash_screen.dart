import 'package:flutter/material.dart';
import 'package:whatsapp_ui_flutter/main.dart';
import 'dart:async';

import 'package:whatsapp_ui_flutter/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/whatsapp 1.png')),
            SizedBox(height: 20),
            Text('WhatsApp', style: TextStyle(fontFamily: 'Inter')),
          ],
        ),
      ),
    );
  }
}
