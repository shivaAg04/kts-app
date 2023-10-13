import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:kts/widgets/past_events.dart';
import 'package:kts/widgets/upcoming_events.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1;
    double width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    height: height * .15,
                    child: Image.asset("assets/images/ktslogo.png")),
              ),
            ),
            SizedBox(
              height: height * .1,
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Knowledge in Motion ',
                    textStyle: const TextStyle(
                      color: Colors.amber,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                  TypewriterAnimatedText(
                    ' Innovation in Action',
                    textStyle: const TextStyle(
                      color: Colors.red,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                  TypewriterAnimatedText(
                    'KINESIS Technical Society',
                    textStyle: const TextStyle(
                      color: Colors.cyan,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Upcoming Events",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            UpcomingEvent(),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Past Events",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // past event
            PastEvent(),
          ],
        ),
      ),
    );
  }
}
