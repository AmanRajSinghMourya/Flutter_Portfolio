import 'package:portfolio/components/my_time_line_tile.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/timeline_card.dart';

class TimeLine extends StatelessWidget {
  const TimeLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: ListView(
          children: [
            MyTimeLineTile(
              isFirst: true,
              isLast: false,
              timeLineCard: TimeLineCard(),
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              timeLineCard: TimeLineCard(),
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: true,
              timeLineCard: TimeLineCard(),
            ),
          ],
        ),
      ),
    );
  }
}
