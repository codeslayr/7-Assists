import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marquee/marquee.dart';
import 'package:assists_landing/constants/custom_color.dart';
import 'package:assists_landing/constants/text_style.dart';

class ContactUsViewMobile extends StatefulWidget {
  const ContactUsViewMobile({super.key});

  @override
  State<ContactUsViewMobile> createState() => _ContactUsViewMobileState();
}

class _ContactUsViewMobileState extends State<ContactUsViewMobile> {
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
                      letterSpacing: -6,
                      shadows: [
                        Shadow(
                          offset: Offset(3.0, 3.0),
                          blurRadius: 3.0,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ],
                      fontSize: 100,
                      color: Colors.white),
                  scrollAxis: Axis.horizontal,

                  crossAxisAlignment: CrossAxisAlignment.start,
                  velocity: 100.0, // Speed of scrolling
                ),
              ),
            ),
            SizedBox(height: screenHeight / 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
              child: Text(
                "Every Club wants to present their best side on social media. Let’s help you do that in the best way possible.",
                style: mSectionHeadingTextStyle.copyWith(
                    letterSpacing: -1,
                    fontWeight: FontWeight.w400,
                    fontSize: 39),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: screenHeight / 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                      height: 16,
                      width: 16,
                    ),
                    label: Text("Contact us",
                        style: kSectionSubheadingTextStyle.copyWith(
                            color: Colors.white, fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      padding:
                          EdgeInsets.symmetric(horizontal: 95, vertical: 15),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 290,
                  child: Text(
                    "The consultation calls are absolutely free, We love to hear from you about your club.",
                    style: kSectionSubheadingTextStyle.copyWith(
                        fontSize: 14, color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
