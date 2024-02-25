import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';

class TimeLineCard extends StatelessWidget {
  const TimeLineCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: darkColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        "Hello",
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: Colors.white),
      ),
    );
  }
}
