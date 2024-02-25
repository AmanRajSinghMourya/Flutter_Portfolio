import 'package:flutter/material.dart';
import 'package:portfolio/components/myprojectsection.dart';
import 'package:portfolio/constraints.dart';

import 'package:portfolio/screens/home_image_banner.dart';

import 'package:portfolio/screens/main_screen.dart';
import 'package:portfolio/screens/timeline.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  //this is the main screen of our porfolio
  //we make the widget of right part here
  //and pass it as a list to the MainScreen
  @override
  Widget build(BuildContext context) {
    return MainScreen(
      childrenOfRightPart: [
        HomeImageBanner(),
        SizedBox(
          height: padding,
        ),
        Text("My TimeLine", style: Theme.of(context).textTheme.titleLarge),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: secondaryColor,
                margin: EdgeInsets.all(5),
                child: TimeLine(),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(5),
                color: Colors.white,
                child: Text(
                  "dadada",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: padding,
        ),
        MyProjectSections(),
      ],
    );
  }
}
