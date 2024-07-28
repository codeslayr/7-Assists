import 'package:flutter/material.dart';
import 'package:seven_assists/constants/custom_color.dart';
import 'package:seven_assists/constants/text_style.dart';

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
                height: screenHeight / 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
                child: Text(
                  'Solutions that Fit Your Budget and Needs. We understand the challenges faced by tier 3 or low-level clubs with limited resources. Our website development and social media post designing service is tailored to address your pain points while ensuring affordability and quality. With us, you can enhance your online presence without breaking the bank.',
                  textAlign: TextAlign.justify,
                  style: kSectionSubheadingTextStyle.copyWith(
                      fontSize: 30, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: screenHeight / 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Positioned(
                          right: 480,
                          bottom: 120,
                          height: 180,
                          width: 170,
                          child: Image.asset(
                            "assets/images/rectangle.png",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth / 10),
                          child: Container(
                            padding: EdgeInsets.only(top: screenHeight / 8),
                            width: 400,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Professional Club Website",
                                  style: kSectionHeadingTextStyle,
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  "Weekly scheduled post designs, maintained professional website to help you be the best in your league!",
                                  style: kSectionSubheadingTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
                    child: Stack(
                      children: [
                        Positioned(
                          right: 480,
                          bottom: 120,
                          height: 180,
                          width: 170,
                          child: Image.asset(
                            "assets/images/rectangle.png",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth / 10),
                          child: Container(
                            padding: EdgeInsets.only(top: screenHeight / 8),
                            width: 400,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Social Media Post Designs",
                                  style: kSectionHeadingTextStyle,
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  "Weekly scheduled post designs, maintained professional website to help you be the best in your league!",
                                  style: kSectionSubheadingTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
