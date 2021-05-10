import 'package:flutter/material.dart';
import 'package:netflix/models/exports.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  CustomAppBar({Key key, this.scrollOffset = 0}) : super(key: key);

  final TextStyle navItem = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          Colors.black.withOpacity(scrollOffset / 350.clamp(0, 1).toDouble()),
      padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
      child: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(Assets.netflixLogo0),
            SizedBox(width: 12),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text("Movies", style: navItem),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text("TV Shows", style: navItem),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text("My List", style: navItem),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
