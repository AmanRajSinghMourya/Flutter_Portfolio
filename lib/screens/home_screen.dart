import 'package:flutter/material.dart';
import 'package:portfolio/components/myprojectsection.dart';
import 'package:portfolio/components/resume_cv.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/responsive.dart';

import 'package:portfolio/screens/home_image_banner.dart';

import 'package:portfolio/screens/main_screen.dart';
import 'package:portfolio/screens/timeline_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  //this is the main screen of our porfolio
  //we make the widget of right part here
  //and pass it as a list to the MainScreen
  @override
  Widget build(BuildContext context) {
    return MainScreen(
      childrenOfRightPart: [
        const HomeImageBanner(),
        const SizedBox(
          height: padding,
        ),
        const MyResume(),
        const Divider(),
        if (ResponsiveLayout.isDesktop(context))
          Padding(
            padding: const EdgeInsets.symmetric(vertical: padding / 2),
            child: Text("My TimeLine",
                style: Theme.of(context).textTheme.titleLarge),
          ),

        if (ResponsiveLayout.isDesktop(context)) const MyTimeLineScreen(),
        const SizedBox(
          height: padding,
        ),
        // Divider(),
        const MyProjectSections(),
      ],
    );
  }
}
