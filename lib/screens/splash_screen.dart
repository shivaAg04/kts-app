import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kts/Repo/repo.dart';
import 'package:kts/screens/custom_bottom_navigation.dart';
import 'package:kts/screens/home_screen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Repo.fetchUpcomingEventsData();
    Repo.fetchPastData();
    Repo.fetchAchievement();

    Timer(const Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CustomBottomBar(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
            height: height * .3,
            child: Image.asset("assets/images/ktslogo.png")),
        Lottie.asset("assets/lottie/splash.json"),
      ]),
    );
  }
}
