import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kts/Repo/repo.dart';

class UpcomingEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
    );
  }
}
