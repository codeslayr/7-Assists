import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seven_assists/constants/custom_color.dart';
import 'package:seven_assists/constants/text_style.dart';

class FooterViewMobile extends StatelessWidget {
  const FooterViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
            width: screenWidth,
            // height: screenHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildMainColumn(context),
                SizedBox(height: screenHeight / 20),
                _buildLinkColumn(
                  context,
                  "Quick Links",
                  ["Home", "Service", "Portfolio", "Contact us"],
                ),
                _buildLinkColumn(
                  context,
                  "Others",
                  ["Privacy Policy", "Terms & Conditions", "Legal"],
                ),
                SizedBox(height: screenHeight / 14),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildSocialIcon("assets/images/facebook.svg"),
                        _buildSocialIcon("assets/images/instagram.svg"),
                        _buildSocialIcon("assets/images/linkedin.svg"),
                      ],
                    ),
                    SizedBox(height: screenHeight / 60),
                    _buildCopyright(
                        context, "© 2024 7 Assists. All rights reserved."),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainColumn(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
              fontSize: 85,
              color: Colors
                  .white, // The color here is irrelevant because the gradient will override it
            ),
          ),
        ),
      ],
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        copyright,
        style: kSectionSubheadingTextStyle.copyWith(
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _buildLinkColumn(
      BuildContext context, String heading, List<String> links) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: kSectionSubheadingTextStyle.copyWith(
                fontWeight: FontWeight.w600, fontSize: 22),
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
    );
  }
}
