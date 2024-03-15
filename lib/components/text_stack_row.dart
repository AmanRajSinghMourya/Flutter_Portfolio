import 'package:flutter/material.dart';
import 'package:portfolio/modals/project_list.dart';

class TechStackRow extends StatelessWidget {
  final Project project;
  const TechStackRow({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: project.iconsUsed.length,
        itemBuilder: (context, index) => CircleAvatar(
          radius: 20,
          child: Image.asset(
            project.iconsUsed[index],
          ),
        ),
      ),
    );
  }
}
// Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
        // CircleAvatar(
        //   radius: 20,
        //   backgroundImage: ExactAssetImage("assets/tech_icons/firebase.png"),
        // ),
//         CircleAvatar(
//           radius: 20,
//           backgroundImage: ExactAssetImage("assets/tech_icons/firebase.png"),
//         ),
//         CircleAvatar(
//           radius: 20,
//           backgroundImage: ExactAssetImage("assets/tech_icons/dart.png"),
//         )
//       ],
//     )