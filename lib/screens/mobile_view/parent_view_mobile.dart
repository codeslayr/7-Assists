import 'package:flutter/material.dart';
import 'package:assists_landing/constants/custom_color.dart';
import 'package:assists_landing/constants/text_style.dart';
import 'package:assists_landing/screens/mobile_view/contact_us_view_mobile.dart';
import 'package:assists_landing/screens/mobile_view/empower_veiw_mobile.dart';
import 'package:assists_landing/screens/mobile_view/footer_view_mobile.dart';
import 'package:assists_landing/screens/mobile_view/home_view_mobile.dart';
import 'package:assists_landing/screens/mobile_view/portfolio_view_mobile.dart';

class ParentViewMobile extends StatefulWidget {
  const ParentViewMobile({super.key});

  @override
  State<ParentViewMobile> createState() => _ParentViewMobileState();
}

class _ParentViewMobileState extends State<ParentViewMobile> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _serviceKey = GlobalKey();
  final GlobalKey _portfolioKey = GlobalKey();
  final GlobalKey _contactUsKey = GlobalKey();
  final GlobalKey _footerKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      print('Scrolling to section with key: $key'); // Debugging output
      Scrollable.ensureVisible(
        context,
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
        alignment: 0.5, // Adjust alignment if needed
      );
    } else {
      print('Context is null for key: $key'); // Debugging output
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            backgroundColor: WhitebackgroundCustomcolor,
            title: Text(
              '7 ASSISTS',
              style: kMainHeadingTextStyle,
              textAlign: TextAlign.center,
            ),
            centerTitle: true,
            elevation: 0,
            surfaceTintColor: WhitebackgroundCustomcolor,
            floating: false,
            pinned: false,
          ),
          SliverToBoxAdapter(
            key: _homeKey,
            child: HomeViewMobile(
              onGetStartedPressed: () => _scrollToSection(_contactUsKey),
            ),
          ),
          SliverToBoxAdapter(
              key: _serviceKey,
            child: EmpowerViewMobile()),
          SliverToBoxAdapter(
            child: PortfolioViewMobile(key: _portfolioKey)),
          SliverToBoxAdapter(
            child: ContactUsViewMobile(key: _contactUsKey)),
          SliverToBoxAdapter(
            child: FooterViewMobile(
              onLinkPressed: _scrollToSection,
              homeKey: _homeKey,
              serviceKey: _serviceKey,
              portfolioKey: _portfolioKey,
              contactUsKey: _contactUsKey,
            ),
          ),
          SliverList(
            key: GlobalKey(),
            delegate: SliverChildListDelegate(
              [
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
