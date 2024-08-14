import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:assists_landing/constants/custom_color.dart';
import 'package:assists_landing/constants/text_style.dart';

class HomeViewWeb extends StatelessWidget {
  final VoidCallback scrollToContact; // Add this parameter

  const HomeViewWeb({
    super.key,
    required this.scrollToContact, // Add this parameter
  });

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
              top: 400,
              child: Image.asset(
                'assets/images/bg.png',
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: screenWidth / 14, bottom: screenHeight / 8),
                  child: Container(
                    width: 700,
                    height: 400,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 30,
                          height: 90,
                          width: 90,
                          child: Image.asset(
                            'assets/images/rectangle.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: kSectionHeadingTextStyle,
                                  children: [
                                    const TextSpan(
                                        text: "Improving Football Clubs "),
                                    WidgetSpan(
                                      child: ShaderMask(
                                        shaderCallback: (bounds) {
                                          return const LinearGradient(
                                            colors: [
                                              Color(0xFFFF7448),
                                              Color(0xFFFF4848),
                                              Color(0xFF6248FF),
                                            ],
                                          ).createShader(Rect.fromLTWH(0, 0,
                                              bounds.width, bounds.height));
                                        },
                                        child: Text(
                                          "Online Presence",
                                          style:
                                              kSectionHeadingTextStyle.copyWith(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const TextSpan(
                                        text: ",\n1 Club at a time!"),
                                  ],
                                ),
                              ),
                              SizedBox(height: screenHeight / 40),
                              Text(
                                "Weekly scheduled post designs, maintained professional website to help you be the best in your league!",
                                style: kSectionSubheadingTextStyle.copyWith(
                                    fontFamily: 'Inter'),
                              ),
                              SizedBox(height: screenHeight / 60),
                              Container(
                                width: 180,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Colors.black, // Background color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  onPressed:
                                      scrollToContact, // Use the callback here
                                  child: Center(
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/images/message.svg',
                                          color: Colors.white,
                                          height: 16,
                                          width: 16,
                                        ),
                                        const SizedBox(
                                            width:
                                                8), // Add space between icon and text
                                        Text(
                                          "Get Started",
                                          style: kSectionSubheadingTextStyle
                                              .copyWith(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: screenHeight * 0.9,
                  child: LazyLottie(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LazyLottie extends StatefulWidget {
  @override
  _LazyLottieState createState() => _LazyLottieState();
}

class _LazyLottieState extends State<LazyLottie> {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isVisible
        ? Lottie.asset(
            'assets/images/fotos1.json',
            fit: BoxFit.contain,
          )
        : Container();
  }
}
