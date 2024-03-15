import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/responsive.dart';

class TimeLineCard extends StatelessWidget {
  final String cardDescription;
  const TimeLineCard({
    super.key,
    required this.cardDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveLayout.isDesktop(context) ? 120 : 180,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            cardDescription,
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Colors.white),
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            maxLines: 6,
          ),
        ],
      ),
    );
  }
}
