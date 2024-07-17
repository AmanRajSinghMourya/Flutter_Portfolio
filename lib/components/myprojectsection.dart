import 'package:flutter/material.dart';
import 'package:portfolio/components/project_card.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/modals/project_list.dart';
import 'package:portfolio/responsive.dart';

class MyProjectSections extends StatelessWidget {
  const MyProjectSections({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(padding / 2),
          child: Text(
            "My Projects",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const ResponsiveLayout(
          mobile: ProjectGrid(
            childAspectRatio: 1.4,
            crossAxisCount: 1,
          ),
          largeMobile: ProjectGrid(
            childAspectRatio: 1.7,
            crossAxisCount: 2,
          ),
          tablet: ProjectGrid(
            childAspectRatio: 1.5,
            crossAxisCount: 2,
          ),
          desktop: ProjectGrid(
            crossAxisCount: 3,
            childAspectRatio: 1.2,
          ),
        ),
      ],
    );
  }
}

class ProjectGrid extends StatelessWidget {
  const ProjectGrid({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  });
  final int crossAxisCount;
  final double childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: project.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        mainAxisSpacing: padding,
        crossAxisSpacing: padding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: project[index],
      ),
    );
  }
}
