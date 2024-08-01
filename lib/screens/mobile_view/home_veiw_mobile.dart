import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:seven_assists/constants/custom_color.dart';
import 'package:seven_assists/constants/text_style.dart';

class HomeViewMobile extends StatelessWidget {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(top: screenHeight / 80),
      width: screenWidth,
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
            ),
          ),
          Positioned(
            top: 320,
            child: Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth / 14, bottom: screenHeight / 20),
                child: Container(
                  width: 700,
                  height: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: mSectionHeadingTextStyle.copyWith(
                              letterSpacing: -2, height: -1),
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
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(text: "\n1 Club At A Time!"),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight / 40),
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
              // Replace the image with Lottie animation
              SizedBox(
                height: screenHeight * 0.8,
                width: double.infinity, // Adjust the height as needed
                child: Lottie.asset(
                  'assets/images/fotos1.json', // Update this path with your Lottie file
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
