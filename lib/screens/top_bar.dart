import 'package:flutter/material.dart';

import 'package:portfolio/constraints.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/about_me.dart';
import 'package:portfolio/screens/contact_me.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/screens/project_screens.dart';
import 'package:portfolio/screens/timeline_screen.dart';

class TopBar extends StatelessWidget {
  TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout.isDesktop(context)
        ? Padding(
            padding: const EdgeInsets.symmetric(vertical: padding / 2),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Spacer(),
                // if (ResponsiveLayout.isDesktop(context))
                //   Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Text(
                //       "Aman's Portfolio",
                //       style: Theme.of(context).textTheme.titleLarge!.copyWith(),
                //     ),
                //   ),
                // Expanded(
                //   child: Container(),
                //   flex: 2,
                // ),
                // Spacer(),
                NavigationButton(
                  title: "Home",
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                ),
                NavigationButton(
                  title: "About",
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AboutMe()));
                  },
                ),
                NavigationButton(
                  title: "Projects",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProjectScreen()));
                  },
                ),
                NavigationButton(
                  title: "Skills",
                  onTap: () {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (context) => AboutMe()));
                  },
                ),
                NavigationButton(
                  title: "Contact",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ContactMeScreen()));
                  },
                ),
                // Spacer(),
              ],
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(bottom: padding / 2),
            child: Column(
              children: [
                // FontAwesomeIcons.neos,
                SideBarNavigation(
                  icon: Icon(Icons.home),
                  title: "Home",
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                ),
                SideBarNavigation(
                  title: "About",
                  icon: Icon(
                    Icons.person,
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AboutMe()));
                  },
                ),
                SideBarNavigation(
                  title: "Projects",
                  icon: Icon(
                    Icons.plus_one_rounded,
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProjectScreen()));
                  },
                ),
                SideBarNavigation(
                  title: "Contact",
                  icon: Icon(
                    Icons.mail_outline_rounded,
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ContactMeScreen()));
                  },
                ),
                SideBarNavigation(
                  title: "TimeLine",
                  icon: Icon(
                    Icons.stacked_line_chart_outlined,
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyTimeLineScreen()));
                  },
                ),
              ],
            ),
          );
  }
}

class SideBarNavigation extends StatelessWidget {
  const SideBarNavigation({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });
  final Icon icon;
  final String title;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      onTap: () {
        onTap.call();
      },
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(),
      ),
    );
  }
}

class NavigationButton extends StatelessWidget {
  const NavigationButton({super.key, required this.title, required this.onTap});
  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onTap.call();
      },
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: primaryColor,
            ),
      ),
    );
  }
}
