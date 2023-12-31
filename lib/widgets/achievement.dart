import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kts/Repo/repo.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

class Achievemnet extends StatelessWidget {
  const Achievemnet({super.key});

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
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: CachedNetworkImage(
                width: width * .8,
                height: height * .3,
                imageUrl:
                    "https://drive.google.com/uc?export=view&id=1qWhEU5yMe0kdRzHKu-7jaGM2ZjNFeKDV",
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
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
