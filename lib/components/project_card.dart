import 'package:flutter/material.dart';
import 'package:portfolio/components/text_stack_row.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/modals/project_list.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/project_screens.dart';

import 'package:url_launcher/url_launcher.dart' as launcher;

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });
  final Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: secondaryColor,
      ),
      padding: EdgeInsets.all(padding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.projectTitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          // Spacer(),
          Text(
            maxLines: ResponsiveLayout.isMobile(context) ? 3 : 3,
            project.description,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              height: 1.5,
            ),
          ),
          // Spacer(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProjectScreen(),
                    ),
                  );
                },
                child: Text(
                  "Read More>>",
                  style: TextStyle(color: primaryColor),
                ),
              ),
              TextButton(
                onPressed: () {
                  launcher.launchUrl(
                    Uri.parse(project.githubUrl),
                    mode: launcher.LaunchMode.externalApplication,
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
            ],
          ),
          //tech stack used
          // if (!ResponsiveLayout.isTablet(context))
          // TechStackRow(
          //   project: project,
          // ),
        ],
      ),
    );
  }
}
