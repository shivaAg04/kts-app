import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:kts/Repo/repo.dart';
import 'package:kts/screens/add_data.dart';
import 'package:kts/screens/lock_screen.dart';
import 'package:kts/widgets/achievement.dart';
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
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            //logo
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: height * .15,
                  child: InkWell(
                    child: Image.asset("assets/images/ktslogo.png"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LockScreen(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            //animated text
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
            // // upcoming events
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
            SizedBox(
              height: height * .02,
            ),

            /// Past Events
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

            SizedBox(
              height: height * .3,
              width: double.infinity,
              child: PastEvent(),
            ),

            /// Achievements
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Achievements",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: height * .3,
              width: double.infinity,
              child: Achievemnet(),
            )
          ],
        ),
      ),
    );
  }
}
