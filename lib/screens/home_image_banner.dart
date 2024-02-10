import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_text.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/responsive.dart';

class HomeImageBanner extends StatelessWidget {
  const HomeImageBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: ResponsiveLayout.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/back1.jpeg",
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: padding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hi, I'm Aman Raj",
                  style: ResponsiveLayout.isDesktop(context)
                      ? Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold)
                      : Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      "I am a  ",
                      style: ResponsiveLayout.isDesktop(context)
                          ? Theme.of(context).textTheme.headlineLarge!.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold)
                          : Theme.of(context).textTheme.headlineSmall!.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Expanded(child: AnimatedTextWidget()),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
