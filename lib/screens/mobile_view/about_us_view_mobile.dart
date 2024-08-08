import 'package:flutter/material.dart';
import 'package:assists_landing/components/process_container.dart';
import 'package:assists_landing/constants/custom_color.dart';
import 'package:assists_landing/constants/text_style.dart';

class AboutUsViewMobile extends StatelessWidget {
  const AboutUsViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth / 40, vertical: screenHeight / 10),
        color: WhitebackgroundCustomcolor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth / 10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.only(top: 28, bottom: 28, left: 20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("About us", style: mSectionHeadingTextStyle),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                          "We’re small team of designers and developers working tirelessly to get the best services for clubs in football. Trying different new techniques and stories to make the image of your club better.",
                          style: kSectionSubheadingTextStyle),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Our Process",
                        style: kSectionSubheadingTextStyle.copyWith(
                            color: Colors.grey, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ProcessContainer(
                                  icon: "assets/images/intro.svg",
                                  title: "Introduction Meet",
                                  subtitle:
                                      "Identify key pages and sections for any website in any industry."),
                              SizedBox(
                                width: 8,
                              ),
                              ProcessContainer(
                                  icon: "assets/images/draft.svg",
                                  title: "Preparing Strategy",
                                  subtitle:
                                      "Drag, add, edit or remove sections to get the final flow locked down."),
                            ],
                          ),
                          Row(
                            children: [
                              ProcessContainer(
                                  icon: "assets/images/money.svg",
                                  title: "Weekly Schedule",
                                  subtitle:
                                      "Starting off with a sitemap reduces scope creep for new projects."),
                              SizedBox(
                                width: 8,
                              ),
                              ProcessContainer(
                                  icon: "assets/images/tag.svg",
                                  title: "Feedback",
                                  subtitle:
                                      "Tag your sections as global or add colors to manage sections."),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: screenWidth / 40,
                ),
                Expanded(child: Image.asset("assets/images/portfolio2.png"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
