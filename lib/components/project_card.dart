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

          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Read More>>",
                style: TextStyle(color: primaryColor),
              ),
            ),
          ),
          //tech stack used
          // if (!ResponsiveLayout.isTablet(context))
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 20,
                // maxRadius: 25,
                // minRadius: 5,
                backgroundImage: ExactAssetImage("assets/flutter.png"),
              ),
              CircleAvatar(
                radius: 20,
                // maxRadius: 25,
                // minRadius: 5,
                backgroundImage: ExactAssetImage("assets/firebase.png"),
              ),
              CircleAvatar(
                radius: 20,
                // maxRadius: 25,
                // minRadius: 5,
                backgroundImage: ExactAssetImage("assets/dart.png"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
