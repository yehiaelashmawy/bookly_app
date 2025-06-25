import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAaanimation,
  });

  final Animation<Offset> slidingAaanimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAaanimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAaanimation,
            child: const Text(
              'Read Free Books',
              style: TextStyle(
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
