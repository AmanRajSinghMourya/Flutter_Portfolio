import 'package:flutter/material.dart';
import 'package:portfolio/components/myprojectsection.dart';

import 'package:portfolio/screens/home_image_banner.dart';

import 'package:portfolio/screens/main_screen.dart';

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
        MyProjectSections(),
      ],
    );
  }
}
