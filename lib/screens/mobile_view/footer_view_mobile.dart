import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:assists_landing/constants/custom_color.dart';
import 'package:assists_landing/constants/text_style.dart';
import 'package:url_launcher/url_launcher.dart';

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
                        _buildSocialIcon(
                            "assets/images/X.svg", "https://x.com/7assists"),
                        _buildSocialIcon("assets/images/facebook.svg",
                            "https://www.facebook.com/7assists/"),
                        _buildSocialIcon("assets/images/instagram.svg",
                            "https://www.instagram.com/7assists/"),
                        _buildSocialIcon("assets/images/linkedin.svg",
                            "https://www.linkedin.com/company/7assists"),
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
              letterSpacing: -7,
              fontSize: 85,
              color: Colors
                  .white, // The color here is irrelevant because the gradient will override it
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSocialIcon(String assetPath, String url) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: InkWell(
        onTap: () => _launchURL(url),
        child: SvgPicture.asset(
          assetPath,
          height: 15,
          width: 15,
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
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
