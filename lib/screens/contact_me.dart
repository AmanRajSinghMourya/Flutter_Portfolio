import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/modals/project_list.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/top_bar.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class ContactMeScreen extends StatelessWidget {
  const ContactMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveLayout.isDesktop(context)
          ? null
          : AppBar(
              title: Text(
                "Contacts",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (ResponsiveLayout.isDesktop(context) == true) TopBar(),
            Divider(),
            Padding(
              padding: EdgeInsets.all(padding),
              child: Text(
                "You can hit me up here",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.white),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(padding),
                child: ResponsiveLayout(
                  mobile: ContactGrid(
                    childAspectRatio: 2.0,
                    crossAxisCount: 1,
                  ),
                  tablet: ContactGrid(
                    childAspectRatio: 1.1,
                    crossAxisCount: 3,
                  ),
                  desktop: ContactGrid(
                    crossAxisCount: 4,
                    childAspectRatio: 1.6,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactGrid extends StatelessWidget {
  const ContactGrid({
    this.crossAxisCount = 4,
    this.childAspectRatio = 1.6,
    super.key,
  });
  final crossAxisCount;
  final childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        mainAxisSpacing: padding,
        crossAxisSpacing: padding,
      ),
      itemCount: contactDetails.length,
      itemBuilder: (context, index) => ColumnIcons(index: index),
    );
  }
}

class ColumnIcons extends StatelessWidget {
  final int index;
  const ColumnIcons({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launcher.launchUrl(
          Uri.parse(contactDetails[index].urlName),
          mode: launcher.LaunchMode.externalApplication,
        );
      },
      child: Column(
        children: [
          Expanded(
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
              ),
              child: Image.asset(
                contactDetails[index].iconTitleLocation,
                scale: 1,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              contactDetails[index].title,
              style: ResponsiveLayout.isDesktop(context)
                  ? Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.white)
                  : Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
