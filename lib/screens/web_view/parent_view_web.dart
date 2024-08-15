import 'package:flutter/material.dart';
import 'package:assists_landing/constants/custom_color.dart';
import 'package:assists_landing/constants/text_style.dart';
import 'package:assists_landing/screens/web_view/contact_us_view_web.dart';
import 'package:assists_landing/screens/web_view/empower_view_web.dart';
import 'package:assists_landing/screens/web_view/footer_view_web.dart';
import 'package:assists_landing/screens/web_view/home_view_web.dart';
import 'package:assists_landing/screens/web_view/portfolio_view_web.dart';
import 'package:flutter_svg/svg.dart';

class ParentViewWeb extends StatefulWidget {
  const ParentViewWeb({super.key});
  @override
  State<ParentViewWeb> createState() => _ParentViewWebState();
}

class _ParentViewWebState extends State<ParentViewWeb> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _empowerKey = GlobalKey();
  final GlobalKey _portfolioKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();
  final GlobalKey _footerKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                backgroundColor: WhitebackgroundCustomcolor,
                surfaceTintColor: WhitebackgroundCustomcolor,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "7 Assists",
                      style: kMainHeadingTextStyle,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: TabBar(
                        onTap: (index) {
                          switch (index) {
                            case 0:
                              _scrollToSection(_homeKey);
                              break;
                            case 1:
                              _scrollToSection(_empowerKey);
                              break;
                            case 2:
                              _scrollToSection(_portfolioKey);
                              break;
                            case 3:
                              _scrollToSection(_contactKey);
                              break;
                          }
                        },
                        indicatorColor: Colors.black,
                        labelColor: Colors.blue,
                        unselectedLabelColor: Colors.black,
                        dividerColor: Colors.transparent,
                        tabs: [
                          Tab(
                            iconMargin: EdgeInsets.zero,
                            child: Text(
                              "Home",
                              style: kSectionSubheadingTextStyle.copyWith(
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Services",
                              style: kSectionSubheadingTextStyle.copyWith(
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Work",
                              style: kSectionSubheadingTextStyle.copyWith(
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Contact",
                              style: kSectionSubheadingTextStyle.copyWith(
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          _scrollToSection(_contactKey);
                        },
                        child: Center(
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/images/message.svg',
                                color: Colors.white,
                                height: 16,
                                width: 16,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "Get Started",
                                style: kSectionSubheadingTextStyle.copyWith(
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                floating: true,
                pinned: false,
                snap: true,
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    HomeViewWeb(
                      key: _homeKey,
                      scrollToContact: () => _scrollToSection(_contactKey),
                    ),
                    EmpowerViewWeb(key: _empowerKey),
                    PortfolioViewWeb(key: _portfolioKey),
                    ContactUsViewWeb(key: _contactKey),
                    FooterViewWeb(
                      key: _footerKey,
                      onLinkPressed: _scrollToSection,
                      homeKey: _homeKey,
                      serviceKey: _empowerKey,
                      portfolioKey: _portfolioKey,
                      contactUsKey: _contactKey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
