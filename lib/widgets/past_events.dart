import 'package:flutter/material.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

class PastEvent extends StatelessWidget {
  const PastEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollLoopAutoScroll(
      child: Text(
        'Very long text that bleeds out of the rendering space',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      scrollDirection: Axis.horizontal,
    );
  }
}


