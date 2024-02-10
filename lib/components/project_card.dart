import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/modals/project_list.dart';
import 'package:portfolio/responsive.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });
  final Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      color: secondaryColor,
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
            maxLines: ResponsiveLayout.isMobile(context) ? 3 : 4,
            project.description,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              height: 1.5,
            ),
          ),
          // Spacer(),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Read More>>",
                style: TextStyle(color: primaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
