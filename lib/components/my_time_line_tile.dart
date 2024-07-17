import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeLineTile extends StatelessWidget {
  const MyTimeLineTile({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.timeLineCard,
  });

  final bool isFirst;
  final bool isLast;
  final Widget timeLineCard;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: const LineStyle(
          color: Colors.white,
        ),
        indicatorStyle: const IndicatorStyle(
          color: primaryColor,
          width: 20,
        ),
        endChild: timeLineCard,
      ),
    );
  }
}
