import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/screens/timeline.dart';

class MyTimeLineScreen extends StatelessWidget {
  const MyTimeLineScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Education", style: Theme.of(context).textTheme.titleLarge),
              Container(
                color: backColor,
                margin: EdgeInsets.all(5),
                child: TimeLine(),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Text("College", style: Theme.of(context).textTheme.titleLarge),
              Container(
                color: backColor,
                margin: EdgeInsets.all(5),
                child: TimeLine(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
