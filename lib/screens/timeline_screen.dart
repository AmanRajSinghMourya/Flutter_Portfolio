import 'package:flutter/material.dart';
import 'package:portfolio/components/collegeTimeLine.dart';
import 'package:portfolio/components/education_timeline.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/responsive.dart';

class MyTimeLineScreen extends StatelessWidget {
  const MyTimeLineScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout.isDesktop(context)
        ? const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EducationTimeLine(),
              CollegeTimeLine(),
            ],
          )
        : Scaffold(
            appBar: AppBar(
              title: const Text("TimeLine"),
            ),
            body: SafeArea(
              child: ListView(
                children: const [
                  SizedBox(
                    height: padding,
                  ),
                  Row(
                    children: [EducationTimeLine()],
                  ),
                  Row(
                    children: [CollegeTimeLine()],
                  ),
                ],
              ),
            ),
          );
  }
}
