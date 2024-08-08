import 'package:assists_landing/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ProcessContainer extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;

  const ProcessContainer({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              icon,
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: kSectionSubheadingTextStyle.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 4.0),
            Text(subtitle,
                style: kSectionSubheadingTextStyle.copyWith(
                    fontSize: 12, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
