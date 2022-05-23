import 'dart:async';
import 'package:flutter/material.dart';
import 'package:postest6_azzaiqlalistifaroh_1915016060_/main.dart';
import 'package:postest6_azzaiqlalistifaroh_1915016060_/landing_page.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Start();
  }

  Start() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LandingPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(205, 244, 74, 2),
      body: Center(
        child: Image.asset(
          "assets/logo3.png",
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}
