import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:kts/Repo/repo.dart';
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
            Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                child: CachedNetworkImage(
                  imageUrl:
                      "https://drive.google.com/uc?export=view&id=${Repo.upcomingEventsList[0]}",
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ),
                  errorWidget: (context, url, error) => Icon(
                    Icons.error,
                    color: Colors.white,
                  ),
                ),
                onTap: () {},
              ),
            ),

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
            // // past event
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
            // // past event
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
