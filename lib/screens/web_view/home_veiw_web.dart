import 'package:flutter/material.dart';
import 'package:seven_assists/constants/custom_color.dart';
import 'package:seven_assists/constants/text_style.dart';

class HomeVeiwWeb extends StatelessWidget {
  const HomeVeiwWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Material(
      child: Container(
        width: screenWidth,
        height: screenHeight,
        color: WhitebackgroundCustomcolor,
        child: Stack(
          children: [
            Positioned(
              top: 83,
              left: 25,
              height: 180,
              width: 170,
              child: Image.asset(
                'assets/images/rectangle.png',
                fit: BoxFit.cover,
                // Adjust blend mode as needed
              ),
            ),
            Positioned(
              top: 450,
              child: Image.asset(
                'assets/images/bg.png',
                fit: BoxFit.cover,
                // Adjust blend mode as needed
              ),
            ),
            // Other texts and images
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            style: kSectionHeadingTextStyle,
                            children: [
                              TextSpan(text: "Improving Football Clubs "),
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
                                    "Online Presence",
                                    style: kSectionHeadingTextStyle.copyWith(
                                      color: Colors
                                          .white, // Set the text color to white
                                    ),
                                  ),
                                ),
                              ),
                              TextSpan(text: ",\n1 Club at a time!"),
                            ],
                          ),
                        ),
                        SizedBox(height: screenHeight / 40),
                        Text(
                            "Weekly scheduled post designs, maintinaed professional website to help you be the best in your league!",
                            style: kSectionSubheadingTextStyle),
                        SizedBox(height: screenHeight / 60),
                        // Add other widgets as needed
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: TextButton.icon(
                            onPressed: () {
                              // Your onPressed function here
                            },
                            icon: Icon(
                              Icons.chat,
                              size: 16,
                              color: Colors.white,
                            ),
                            label: Text(
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
