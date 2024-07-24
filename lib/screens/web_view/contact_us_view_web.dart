import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marquee/marquee.dart';
import 'package:seven_assists/constants/custom_color.dart';
import 'package:seven_assists/constants/text_style.dart';

class ContactUsViewWeb extends StatefulWidget {
  const ContactUsViewWeb({super.key});

  @override
  State<ContactUsViewWeb> createState() => _ContactUsViewWebState();
}

class _ContactUsViewWebState extends State<ContactUsViewWeb> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: screenHeight / 10),
        color: WhitebackgroundCustomcolor,
        width: screenWidth,
        // height: screenHeight,
        child: Column(
          children: [
            Container(
              width: double.infinity, // Ensure the container takes full width
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFF7448), // First color
                    Color(0xFFFF4848), // Second color
                    Color(0xFF6248FF), // Third color
                  ],
                  begin: Alignment.topLeft, // Start of the gradient
                  end: Alignment.bottomRight, // End of the gradient
                ),
              ),
              child: SizedBox(
                height: 140, // Fixed height for the Marquee widget

                child: Marquee(
                  text: 'Contact Us 🌐 ',
                  style: kMainHeadingTextStyle.copyWith(
                      fontSize: 100, color: Colors.white),
                  scrollAxis: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  velocity: 100.0, // Speed of scrolling
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth / 20,
                  right: screenWidth / 20,
                  top: screenHeight / 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      "Every Club wants to present their best side on social media. Let’s help you do that in the best way possible.",
                      style: kSectionSubheadingTextStyle.copyWith(fontSize: 38),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: PurpleCustomcolor,
                          ),
                          child: ElevatedButton.icon(
                            onPressed: () {
                              // Add your onPressed code here!
                            },
                            icon: SvgPicture.asset(
                              "assets/images/send.svg",
                              height: 14,
                              width: 14,
                            ),
                            label: Text("Contact us",
                                style: kSectionSubheadingTextStyle.copyWith(
                                    color: Colors.white, fontSize: 14)),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 75, vertical: 15),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: 260,
                          child: Text(
                            "The consultation calls are absolutely free, We love to hear from you about your club.",
                            style: kSectionSubheadingTextStyle.copyWith(
                                fontSize: 12, color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
