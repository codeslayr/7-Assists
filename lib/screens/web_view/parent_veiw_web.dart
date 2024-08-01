import 'package:flutter/material.dart';
import 'package:seven_assists/constants/custom_color.dart';
import 'package:seven_assists/constants/text_style.dart';
import 'package:seven_assists/screens/web_view/contact_us_view_web.dart';
import 'package:seven_assists/screens/web_view/empower_view_web.dart';
import 'package:seven_assists/screens/web_view/footer_view_web.dart';
import 'package:seven_assists/screens/web_view/home_veiw_web.dart';
import 'package:seven_assists/screens/web_view/portfolio_view_web.dart';

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
      Scrollable.ensureVisible(context,
          duration: Duration(seconds: 1), curve: Curves.easeInOut);
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
                      width: MediaQuery.of(context).size.width * 0.4,
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
                        dividerColor: Colors.transparent,
                        labelColor: Colors.blue,
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Tab(
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
                              "Our Work",
                              style: kSectionSubheadingTextStyle.copyWith(
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Contact us",
                              style: kSectionSubheadingTextStyle.copyWith(
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
                floating: true,
                pinned: false,
                snap: true,
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    HomeVeiwWeb(key: _homeKey),
                    EmpowerViewWeb(key: _empowerKey),
                    PortfolioViewWeb(key: _portfolioKey),
                    // AboutUsViewWeb(key: _aboutKey),
                    ContactUsViewWeb(key: _contactKey),
                    FooterViewWeb(key: _footerKey),
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
