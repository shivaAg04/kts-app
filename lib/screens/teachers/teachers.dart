import 'package:flutter/material.dart';
import 'package:kts/screens/teams/card_team.dart';

class TeacherScreen extends StatelessWidget {
  const TeacherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1;
    double width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * .1,
              ),
              CardTeam(c: Colors.black, image: "1"),
            ],
          ),
        ),
      ),
    );
  }
}
