import 'package:flutter/material.dart';
import 'package:kts/screens/teams/card_team.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({Key? key}) : super(key: key);

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
              CardTeam(c: Colors.yellow, image: "2"),
              CardTeam(c: Color(0xFF07A5C3), image: "3"),
              CardTeam(c: Color(0xFFE74B3D), image: "4"),
              CardTeam(c: Color(0xFF07A5C3), image: "5"),
              CardTeam(c: Color(0xFFE74B3D), image: "6"),
              CardTeam(c: Color(0xFF07A5C3), image: "7"),
            ],
          ),
        ),
      ),
    );
  }
}
