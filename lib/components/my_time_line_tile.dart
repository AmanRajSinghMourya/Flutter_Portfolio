import 'package:flutter/material.dart';
import 'package:portfolio/components/timeline_card.dart';
import 'package:portfolio/constraints.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeLineTile extends StatelessWidget {
  const MyTimeLineTile({
    super.key,
    required this.isFirst,
    required this.isLast,
  });

  final bool isFirst;
  final bool isLast;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(
          color: Colors.white,
        ),
        indicatorStyle: IndicatorStyle(
          color: primaryColor,
          width: 20,
        ),
        endChild: TimeLineCard(),
      ),
    );
  }
}
