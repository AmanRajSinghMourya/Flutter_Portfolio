import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/top_bar.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveLayout.isDesktop(context)
          ? null
          : AppBar(
              title: Text(
                "Skiils",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // if (ResponsiveLayout.isDesktop(context) == true) TopBar(),
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
              Divider(),
              Padding(
                padding: EdgeInsets.all(padding),
                child: Text(
                  "My skills include",
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
                    mobile: SkillsGrid(
                      childAspectRatio: 2.0,
                      crossAxisCount: 1,
                    ),
                    tablet: SkillsGrid(
                      childAspectRatio: 1.1,
                      crossAxisCount: 3,
                    ),
                    desktop: SkillsGrid(
                      crossAxisCount: 4,
                      childAspectRatio: 1.6,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SkillsGrid extends StatelessWidget {
  const SkillsGrid({
    super.key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1.6,
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
      itemCount: 4,
      itemBuilder: (context, index) => Card(
        child: Container(
          child: Text("skiils"),
          color: Colors.red,
        ),
      ),
    );
  }
}
