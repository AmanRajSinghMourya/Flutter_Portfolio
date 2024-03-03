import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/modals/project_list.dart';
import 'package:portfolio/screens/timeline.dart';

class EducationTimeLine extends StatelessWidget {
  const EducationTimeLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Education",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: primaryColor)),
          Container(
            color: backColor,
            margin: EdgeInsets.all(5),
            child: TimeLine(
              mytimelinetile: [...mytimelineEducation],
            ),
          ),
        ],
      ),
    );
  }
}
