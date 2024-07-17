import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';

class AnimatedProgressBar extends StatelessWidget {
  const AnimatedProgressBar({
    super.key,
    required this.skillTitle,
    required this.percentage,
  });
  final String skillTitle;
  final double percentage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween(begin: 0.0, end: percentage),
            duration: const Duration(seconds: 1),
            builder: (context, value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: secondaryColor,
                ),
                Center(
                  child: Text(
                    "${(value * 100).toInt()}%",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: padding / 2,
        ),
        Text(
          skillTitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
