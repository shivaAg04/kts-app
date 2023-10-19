import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kts/Repo/repo.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

class PastEvent extends StatelessWidget {
  const PastEvent({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1;
    double width = MediaQuery.of(context).size.width * 1;
    return ScrollLoopAutoScroll(
      duration: const Duration(seconds: 115),
      scrollDirection: Axis.horizontal,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: Repo.pastEventsList.length,
        itemBuilder: (BuildContext context, int index) {
          print(Repo.pastEventsList.length);
          print(Repo.pastEventsList[index]);
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: InkWell(
              child: CachedNetworkImage(
                width: width * .8,
                height: height * .3,
                imageUrl:
                    "https://drive.google.com/uc?export=view&id=${Repo.pastEventsList[index].image}",
                placeholder: (context, url) => const Center(
                  child: Icon(
                    Icons.image,
                    color: Colors.cyan,
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
