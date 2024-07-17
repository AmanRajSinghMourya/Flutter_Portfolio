import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/responsive.dart';

class MyResume extends StatelessWidget {
  const MyResume({super.key});

  @override
  Widget build(BuildContext context) {
    return !ResponsiveLayout.isMobile(context)
        ? const Padding(
            padding: const EdgeInsets.all(padding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonCV(
                  title: "Resume",
                ),
                ButtonCV(
                  title: "CV",
                ),
              ],
            ),
          )
        : const Padding(
            padding: const EdgeInsets.all(padding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonCV(
                  title: "Resume",
                ),
                SizedBox(
                  height: padding,
                ),
                ButtonCV(
                  title: "CV",
                ),
              ],
            ),
          );
  }
}

class ButtonCV extends StatelessWidget {
  final String title;
  const ButtonCV({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        shape: BoxShape.rectangle,
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            primaryColor,
          ),
          shadowColor: MaterialStateProperty.all(secondaryColor),
        ),
        onPressed: () {},
        child: Text(
          title,
          style: const TextStyle(
            letterSpacing: 1.5,
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
