import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/screens/timeline.dart';

class CollegeTimeLine extends StatelessWidget {
  const CollegeTimeLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text("College",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: primaryColor)),
          Container(
            color: backColor,
            margin: EdgeInsets.all(5),
            child: TimeLine(),
          ),
        ],
      ),
    );
  }
}
