import 'package:flutter/material.dart';

class CardTeam extends StatelessWidget {
  Color c;
  String image;
  CardTeam({super.key, required this.c, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        //<-- SEE HERE
        side: BorderSide(
          color: c,
        ),
      ),
      child: Image.asset("assets/images/$image.png"),
    );
  }
}
