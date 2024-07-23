// import 'package:fc/constants/text_styles.dart';
import 'package:flutter/material.dart';

class ParentViewMobile extends StatefulWidget {
  const ParentViewMobile({super.key});

  @override
  State<ParentViewMobile> createState() => _ParentViewMobileState();
}

class _ParentViewMobileState extends State<ParentViewMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parent View Mobile'),
      ),
      body: Column(
        children: [
          Text(
            'Parent View Mobile',
            // style: kSectionHeadingTextStyle,
          ),
        ],
      ),
    );
  }
}
