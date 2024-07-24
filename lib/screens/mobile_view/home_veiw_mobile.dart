import 'package:flutter/material.dart';
import 'package:seven_assists/constants/custom_color.dart';
import 'package:seven_assists/constants/text_style.dart';

class HomeViewMobile extends StatelessWidget {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(top: screenHeight / 20),
      width: screenWidth,
      // height: screenHeight,
      color: WhitebackgroundCustomcolor,
      child: Stack(
        children: [
          Positioned(
            top: 90,
            left: 10,
            height: 70,
            width: 72,
            child: Image.asset(
              'assets/images/rectangle.png',
              fit: BoxFit.cover,
              // Adjust blend mode as needed
            ),
          ),
          Positioned(
            top: 300,
            child: Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.cover,
              // Adjust blend mode as needed
            ),
          ),
          // Other texts and images
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth / 14, bottom: screenHeight / 8),
                child: Container(
                  width: 700,
                  height: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: mSectionHeadingTextStyle,
                          children: [
                            TextSpan(text: "Improving Football"),
                            WidgetSpan(
                              child: ShaderMask(
                                shaderCallback: (bounds) {
                                  return LinearGradient(
                                    colors: [
                                      Color(0xFFFF7448),
                                      Color(0xFFFF4848),
                                      Color(0xFF6248FF),
                                    ],
                                  ).createShader(Rect.fromLTWH(
                                      0, 0, bounds.width, bounds.height));
                                },
                                child: Text(
                                  "Clubs Online Presence",
                                  style: mSectionHeadingTextStyle.copyWith(
                                    color: Colors
                                        .white, // Set the text color to white
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(text: "\n1 Club At A Time!"),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight / 40),

                      // Add other widgets as needed
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextButton(
                          onPressed: () {
                            // Your onPressed function here
                          },
                          child: Text(
                            "Get Started",
                            style: kSectionSubheadingTextStyle.copyWith(
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Image.asset("assets/images/showcase.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
