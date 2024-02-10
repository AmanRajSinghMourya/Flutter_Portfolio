import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/responsive.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      maxLines: 2,
      style: ResponsiveLayout.isDesktop(context)
          ? Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: primaryColor, fontWeight: FontWeight.bold)
          : Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: primaryColor, fontWeight: FontWeight.bold),
      child: AnimatedTextKit(
        pause: Duration(seconds: 2),
        repeatForever: true,
        animatedTexts: [
          TyperAnimatedText("Software Developer"),
          TyperAnimatedText("Flutter Developer"),
          TyperAnimatedText("Competetive Programmer"),
        ],
      ),
    );
  }
}
