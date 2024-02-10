import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                "assets/portfolio_img.jpg",
              ),
            ),
            Spacer(),
            Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              "Aman Raj Singh Mourya",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Spacer(),
            Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              "Flutter Developer & Competitive Programmer",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w300, height: 1.5),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
