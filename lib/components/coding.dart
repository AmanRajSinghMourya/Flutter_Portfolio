import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_linear_indicator.dart';
import 'package:portfolio/constraints.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: padding / 2),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        LinearProgressBar(
          language: "C++",
          percentage: 0.8,
        ),
        LinearProgressBar(
          language: "C",
          percentage: 0.8,
        ),
        LinearProgressBar(
          language: "Java",
          percentage: 0.8,
        ),
        LinearProgressBar(
          language: "HTML",
          percentage: 0.7,
        ),
        LinearProgressBar(
          language: "CSS",
          percentage: 0.6,
        ),
      ],
    );
  }
}
