import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:seven_assists/constants/custom_color.dart';
import 'package:seven_assists/constants/text_style.dart';

class PortfolioViewWeb extends StatefulWidget {
  const PortfolioViewWeb({super.key});

  @override
  _PortfolioViewWebState createState() => _PortfolioViewWebState();
}

class _PortfolioViewWebState extends State<PortfolioViewWeb> {
  final CarouselController _carouselController = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth / 40, vertical: screenHeight / 10),
        color: WhitebackgroundCustomcolor,
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
                      "assets/images/circle.png",
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Portfolio",
                    style: kSectionHeadingTextStyle.copyWith(
                        color: Colors.grey.shade400, fontSize: 130),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth / 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(vertical: 28),
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
                        height: screenHeight * 0.7,
                        viewportFraction: 1.0,
                        autoPlay: false,
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
                          vertical: screenHeight / 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "From our",
                                style: kSectionSubheadingTextStyle.copyWith(
                                  color: Colors.grey,
                                  fontSize: 24,
                                ),
                              ),
                              // const SizedBox(height: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: Colors.white),
                                    child: IconButton(
                                      icon: Icon(Icons.arrow_back,
                                          color: Colors.black),
                                      onPressed: () {
                                        _carouselController.previousPage();
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.arrow_forward,
                                          color: Colors.white),
                                      onPressed: () {
                                        _carouselController.nextPage();
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const SizedBox(height: 4),
                          Text(
                            "Design Portfolio",
                            style: kSectionSubheadingTextStyle.copyWith(
                              color: Colors.white,
                              fontSize: 60,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
