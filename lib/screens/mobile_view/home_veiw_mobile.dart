import 'package:flutter/material.dart';
import 'package:seven_assists/constants/text_style.dart';

class HomeViewMobile extends StatelessWidget {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text(
        "Home View Mobile",
        style: kSectionHeadingTextStyle,
      ),
    ));
  }
}
