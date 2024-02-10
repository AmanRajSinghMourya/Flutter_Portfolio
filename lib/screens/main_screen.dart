import 'package:flutter/material.dart';

import 'package:portfolio/components/sidebar.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/top_bar.dart';

//so if desktop true than only side bar
//else if tablet true or mobile true than menu in app bar
class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.childrenOfRightPart});
  final List<Widget> childrenOfRightPart;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //hide this app bar if in desktop
      appBar: ResponsiveLayout.isDesktop(context)
          ? null
          : AppBar(
              title: Text(
                "Porfolio X Aman",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              actions: [],
              backgroundColor: backColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                  ),
                ),
              ),
            ),
      //this side bar is triggered from the IconButton
      drawer: SideBar(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //flex 3 meas this take 75% of width and other take 25%
              // we want somewhere between 21-23%
              //this with flex=2 take 2/(7+2)*100 = 22% width

              //this is the side bar or my profiel section

              if (ResponsiveLayout.isDesktop(context) == true)
                Expanded(
                  flex: 2,
                  child: SideBar(),
                ),
              SizedBox(
                width: padding,
              ),
              // Expanded(
              //   flex: 7,
              //   child: SingleChildScrollView(
              //     child: Column(
              //       children: [
              //         ...childrenOfRightPart,
              //       ],
              //     ),
              //   ),
              // ),
              Expanded(
                flex: 7,
                child: Container(
                  child: Column(
                    children: [
                      ResponsiveLayout.isDesktop(context)
                          ? TopBar()
                          : Row(children: []),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [...childrenOfRightPart],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // SingleChildScrollView(
                //   child: Column(
                //     children: [
                //       ...childrenOfRightPart,
                //     ],
                //   ),
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
