import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:assists_landing/constants/custom_color.dart';
import 'package:assists_landing/constants/text_style.dart';

class PortfolioViewMobile extends StatefulWidget {
  const PortfolioViewMobile({super.key});

  @override
  _PortfolioViewMobileState createState() => _PortfolioViewMobileState();
}

class _PortfolioViewMobileState extends State<PortfolioViewMobile> {
  final CarouselController _carouselController = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth / 40, vertical: screenHeight / 90),
        color: WhitebackgroundCustomcolor,
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: screenWidth / 25),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 72,
                    child: Image.asset(
                      "assets/images/circle.png",
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Portfolio",
                    style: mSectionHeadingTextStyle.copyWith(
                        letterSpacing: -4,
                        color: Colors.grey.shade400,
                        fontSize: 70),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth / 80),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CarouselSlider(
                          items: [
                            Image.asset(
                              "assets/images/portfolio2.png",
                              fit: BoxFit.contain,
                            ),
                            Image.asset("assets/images/portfolio2.png",
                                fit: BoxFit.contain),
                            Image.asset("assets/images/portfolio2.png",
                                fit: BoxFit.contain),
                          ],
                          carouselController: _carouselController,
                          options: CarouselOptions(
                            height: screenHeight * 0.2,
                            viewportFraction: 1.1,
                            autoPlay: true,
                            autoPlayAnimationDuration: Duration(seconds: 4),
                            enlargeCenterPage: false,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                          ),
                        ),
                        const SizedBox(height: 16),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth / 40,
                              vertical: screenHeight / 60),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "From our",
                                style: kSectionSubheadingTextStyle.copyWith(
                                  color: Colors.grey,
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                "Design Portfolio",
                                style: kSectionSubheadingTextStyle.copyWith(
                                  letterSpacing: -1,
                                  color: Colors.white,
                                  fontSize: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: MasonryGridView.count(
                itemCount: 8,
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                itemBuilder: (context, index) => Container(
                  child: Image.asset(
                    "assets/images/p${index + 1}.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
