import 'package:portfolio/components/my_time_line_tile.dart';
import 'package:flutter/material.dart';

class TimeLine extends StatelessWidget {
  final List<MyTimeLineTile> mytimelinetile;
  const TimeLine({super.key, required this.mytimelinetile});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: ListView(
          children: [...mytimelinetile],
        ),
      ),
    );
  }
}
