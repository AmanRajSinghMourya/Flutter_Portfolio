import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_circular_indicator.dart';
import 'package:portfolio/constraints.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: padding),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        //to animate this
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: AnimatedProgressBar(
                skillTitle: "Flutter",
                percentage: 0.5,
              ),
            ),
            Spacer(),
            Expanded(
              child: AnimatedProgressBar(
                skillTitle: "Cp",
                percentage: 0.6,
              ),
            ),
            Spacer(),
            Expanded(
              child: AnimatedProgressBar(
                skillTitle: "Java",
                percentage: 0.3,
              ),
            ),
            SizedBox(
              height: padding / 2,
            ),
          ],
        ),
      ],
    );
  }
}
