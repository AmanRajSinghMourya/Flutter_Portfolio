import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';

class LinearProgressBar extends StatelessWidget {
  const LinearProgressBar({
    super.key,
    required this.language,
    required this.percentage,
  });
  final String language;
  final double percentage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: padding / 2,
      ),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0.0, end: percentage),
        duration: Duration(seconds: 1),
        builder: (context, value, child) => Column(
          children: [
            Row(
              children: [
                Text(
                  language,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Text(
                  (value * 100).toInt().toString() + "%",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: padding / 2,
            ),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}
