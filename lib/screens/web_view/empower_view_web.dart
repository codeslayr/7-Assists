import 'package:flutter/material.dart';
import 'package:assists_landing/constants/custom_color.dart';
import 'package:assists_landing/constants/text_style.dart';

class EmpowerViewWeb extends StatelessWidget {
  const EmpowerViewWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth / 40, vertical: screenHeight / 10),
        width: screenWidth,
        color: WhitebackgroundCustomcolor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: screenWidth / 25),
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 120,
                      child: Image.asset(
                        "assets/images/square.png",
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Empower",
                      style: kSectionHeadingTextStyle.copyWith(
                          color: Colors.grey.shade400, fontSize: 130),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight / 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
                child: Text(
                  'Solutions that Fit Your Budget and Needs. We understand the challenges faced by tier 3 or low-level clubs with limited resources. Our website development and social media post designing service is tailored to address your pain points while ensuring affordability and quality. With us, you can enhance your online presence without breaking the bank.',
                  textAlign: TextAlign.justify,
                  style: kSectionSubheadingTextStyle.copyWith(
                      letterSpacing: -1.4,
                      fontSize: 46,
                      wordSpacing: 2,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: screenHeight / 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: screenWidth / 20),
                      child: Container(
                        width: 400,
                        child: Stack(
                          children: [
                            Positioned(
                              height: 90,
                              width: 90,
                              child: Image.asset(
                                "assets/images/rectangle.png",
                              ),
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(left: 50, top: 30, right: 80),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Professional\nClub Website",
                                    style: kSectionHeadingTextStyle,
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Text(
                                    "Clean & Purposeful website built to showcase fixtures, upcoming matches, players stats, sponsors, in a better way.",
                                    style: kSectionSubheadingTextStyle.copyWith(
                                        fontFamily: 'Inter'),
                                  ),
                                  SizedBox(height: 70,)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Image.asset("assets/images/website.png"),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight / 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: screenWidth / 20),
                      child: Container(
                        width: 400,
                        child: Stack(
                          children: [
                            Positioned(
                              height: 90,
                              width: 90,
                              child: Image.asset(
                                "assets/images/rectangle.png",
                              ),
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(left: 50, top: 30, right: 80),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Social Media\nPost Design",
                                    style: kSectionHeadingTextStyle,
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Text(
                                    "Weekly scheduled post designs, maintained professional website to help you be the best in your league!",
                                    style: kSectionSubheadingTextStyle.copyWith(
                                        fontFamily: 'Inter'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Image.asset("assets/images/posts.png"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
