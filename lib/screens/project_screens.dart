import 'dart:ui';

import 'package:url_launcher/url_launcher.dart' as launcher;
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
            Row(
              children: [
                if (ResponsiveLayout.isDesktop(context) == true)
                  Expanded(
                    flex: 2,
                    child: Container(),
                  ),
                if (ResponsiveLayout.isDesktop(context) == true)
                  Expanded(flex: 7, child: TopBar()),
              ],
            ),

            //TopBar applied on ProjectScreen
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
                        childAspectRatio: 11.0 / 5.0,
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
                                maxLines: 4,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                            SizedBox(
                              height: padding,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: padding),
                              child: TextButton(
                                onPressed: () {
                                  launcher.launchUrl(
                                    Uri.parse(project[index].githubUrl),
                                    mode:
                                        launcher.LaunchMode.externalApplication,
                                  );
                                },
                                child: Text(
                                  "GitHub",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(color: primaryColor),
                                ),
                              ),
                            ),
                            if (ResponsiveLayout.isDesktop(context) == true)
                              Expanded(
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                      project[index].projectImages.length,
                                  itemBuilder: (context, index1) => Container(
                                    padding: EdgeInsets.all(padding / 2),
                                    margin: EdgeInsets.all(padding / 2),
                                    child: Image.asset(
                                      project[index].projectImages[index1],
                                      // fit: BoxFit.cover,
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
