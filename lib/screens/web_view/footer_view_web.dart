import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seven_assists/constants/custom_color.dart';
import 'package:seven_assists/constants/text_style.dart';

class FooterViewWeb extends StatelessWidget {
  const FooterViewWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Material(
      child: Column(
        children: [
          Container(
            color: WhitebackgroundCustomcolor,
            child: Divider(
              color: Colors.grey.shade400,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth / 40, vertical: screenHeight / 20),
            color: WhitebackgroundCustomcolor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildMainColumn(context),
                    SizedBox(
                      width: screenWidth / 20,
                    ),
                    _buildLinkColumn(
                      context,
                      "Quick Links",
                      ["Home", "Service", "Portfolio", "Contact us"],
                    ),
                    _buildLinkColumn(
                      context,
                      "Others",
                      [
                        "Privacy Policy",
                        "Terms & Conditions",
                        "Legal",
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildMainColumn(BuildContext context) {
  final double screenHeight = MediaQuery.of(context).size.height;

  return Expanded(
    flex: 3,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [Color(0xFF000000), Color(0xFFF1F0EE)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ).createShader(bounds),
          child: Text(
            "7 ASSISTS",
            style: kSectionHeadingTextStyle.copyWith(
                fontSize: 175,
                letterSpacing: -12,
                color: Colors
                    .white // The color here is irrelevant because the gradient will override it
                ),
          ),
        ),
        SizedBox(height: screenHeight / 14),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildCopyright(context, "© 2024 7 Assists. All rights reserved."),
            Row(
              children: [
                _buildSocialIcon("assets/images/facebook.svg"),
                _buildSocialIcon("assets/images/instagram.svg"),
                _buildSocialIcon("assets/images/linkedin.svg"),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildSocialIcon(String assetPath) {
  return Padding(
    padding: const EdgeInsets.only(right: 8.0),
    child: SvgPicture.asset(
      assetPath,
      height: 20,
      width: 20,
      color: Colors.black,
    ),
  );
}

Widget _buildCopyright(BuildContext context, String copyright) {
  return Text(copyright,
      style: kSectionSubheadingTextStyle.copyWith(
        fontSize: 14,
      ));
}

Widget _buildLinkColumn(
    BuildContext context, String heading, List<String> links) {
  final double screenHeight = MediaQuery.of(context).size.height;

  return Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            heading,
            style: kSectionSubheadingTextStyle.copyWith(
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: screenHeight / 40),
          ...links.map((link) => Padding(
                padding: EdgeInsets.only(bottom: screenHeight / 80),
                child: Text(
                  link,
                  style: kSectionSubheadingTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.grey),
                ),
              )),
        ],
      ),
    ),
  );
}
