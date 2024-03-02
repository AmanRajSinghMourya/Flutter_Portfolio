import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/components/collegeTimeLine.dart';
import 'package:portfolio/components/education_timeline.dart';
import 'package:portfolio/responsive.dart';

class MyTimeLineScreen extends StatelessWidget {
  const MyTimeLineScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout.isDesktop(context)
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EducationTimeLine(),
              CollegeTimeLine(),
            ],
          )
        : Scaffold(
            appBar: AppBar(
              title: Text("TimeLine"),
            ),
            body: SafeArea(
              child: ListView(
                children: [
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
    // Expanded(
    //   child: Container(
    //     color: Colors.amber,
    //   ),
    // ),
    // Expanded(
    //   child: Container(
    //     color: Colors.red,
    //   ),
    // )
    // SizedBox(
    //     height: 400,
    //     child: ListView(
    //       children: [EducationTimeLine()],
    //     ),
  }
}
