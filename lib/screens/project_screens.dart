import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/modals/project_list.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/top_bar.dart';

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveLayout.isDesktop(context)
          ? null
          : AppBar(
              title: Text(
                "My",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //TopBar applied on ProjectScreen
            if (ResponsiveLayout.isDesktop(context) == true) TopBar(),
            Divider(),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: GridView.builder(
                      // shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 16.0 / 8.0,
                        crossAxisCount: 1,
                        crossAxisSpacing: padding,
                        mainAxisSpacing: padding,
                      ),
                      scrollDirection: Axis.vertical,
                      itemCount: project.length,
                      itemBuilder: (context, index) => Container(
                        // color: Colors.white,
                        padding: EdgeInsets.all(padding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              (index + 1).toString() +
                                  ". " +
                                  project[index].projectTitle,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    color: primaryColor,
                                  ),
                            ),
                            SizedBox(
                              height: padding,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: padding),
                              child: Text(
                                project[index].description,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                            Expanded(
                              child: ScrollConfiguration(
                                behavior: AppScrollBehavior(),
                                child: GridView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  physics: PageScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                    childAspectRatio: 6 / 2,
                                    crossAxisSpacing: 0,
                                    mainAxisSpacing: padding * 2,
                                  ),
                                  itemCount:
                                      project[index].projectImages.length,
                                  itemBuilder: (context, index1) => Container(
                                    child: Image.asset(
                                      project[index].projectImages[index1],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
