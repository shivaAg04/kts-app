import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kts/Repo/repo.dart';

class UpcomingEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 1;
    double height = MediaQuery.of(context).size.height * .3;
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: InkWell(
        child: CachedNetworkImage(
          width: width * 1.1, // 80% of screen width
          imageUrl:
              "https://drive.google.com/uc?export=view&id=${Repo.upcomingEventsList[0]}",
          placeholder: (context, url) => const Center(
            child: Icon(
              Icons.image,
              color: Colors.cyan,
            ),
          ),
          errorWidget: (context, url, error) => Icon(
            Icons.error,
            color: Colors.white,
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
