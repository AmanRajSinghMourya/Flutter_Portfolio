import 'package:flutter/material.dart';

import 'package:portfolio/constraints.dart';
import 'package:portfolio/modals/project_list.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/top_bar.dart';

class AboutMe extends StatelessWidget {
  AboutMe({super.key});

  final List<String> me = [
    "Hi everyone, I am Aman Raj Singh Mourya",
    "I am currently a 2nd year B.Tech CSE student at VIT Chennai.",
    "I am from Ujjain(M.P.) and have completed my schooling from Nirmala Convent School, Ujjain",
    "I have obtained 92% in class 10 and 90% in class 12th.",
    "I am also a member of CodeChef Club,VIT as a Competitive Programmer.",
    "Also started to dive in the concept of building Cross-Platform Responsive Application using Flutter.",
    "This Portfolio is also designed in the same.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveLayout.isDesktop(context)
          ? null
          : AppBar(
              title: const Text(
                "About",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //HERE IS THE TOPBAR APPLIED
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
            // Divider(),

            //about section
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: padding / 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: padding,
                        vertical: padding / 2,
                      ),
                      child: Text(
                        "Something about me!",
                        // textAlign: TextAlign.center,
                        style: ResponsiveLayout.isDesktop(context)
                            ? Theme.of(context).textTheme.bodyLarge!.copyWith(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold,
                                )
                            : Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ),
                    const SizedBox(
                      height: padding / 2,
                    ),
                    for (int i = 0; i < me.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: padding / 2,
                          left: padding,
                        ),
                        child: Text(
                          "${i + 1}. ${me[i]}",
                          style: ResponsiveLayout.isDesktop(context)
                              ? Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      letterSpacing: 1,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)
                              : Theme.of(context).textTheme.bodySmall!.copyWith(
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                        ),
                      ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.all(padding),
                      child: Text(
                        "Here are few Certificates",
                        style: ResponsiveLayout.isDesktop(context)
                            ? Theme.of(context).textTheme.titleLarge!.copyWith(
                                color: primaryColor,
                                fontWeight: FontWeight.bold)
                            : Theme.of(context).textTheme.titleSmall!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                      ),
                    ),
                    ResponsiveLayout(
                      mobile: CertificateGrid(
                        childAspectRatio: 2.0,
                        crossAxisCount: 1,
                        certificate: certificate,
                      ),
                      largeMobile: CertificateGrid(
                        childAspectRatio: 1.1,
                        crossAxisCount: 3,
                        certificate: certificate,
                      ),
                      tablet: CertificateGrid(
                        childAspectRatio: 1.1,
                        crossAxisCount: 3,
                        certificate: certificate,
                      ),
                      desktop: CertificateGrid(
                        crossAxisCount: 2,
                        childAspectRatio: 1.3,
                        certificate: certificate,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CertificateGrid extends StatelessWidget {
  const CertificateGrid({
    super.key,
    required this.certificate,
    this.crossAxisCount = 2,
    this.childAspectRatio = 16.0 / 9.0,
  });
  final int crossAxisCount;
  final double childAspectRatio;
  final List<String> certificate;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: certificate.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        mainAxisSpacing: padding,
        crossAxisSpacing: padding,
      ),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: padding / 2,
          vertical: padding / 4,
        ),
        child: Image.asset(
          certificate[index],
          // fit: BoxFit.cover,
        ),
      ),
    );
  }
}
