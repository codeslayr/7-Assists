import 'package:flutter/material.dart';
import 'package:assists_landing/constants/custom_color.dart';
import 'package:assists_landing/constants/text_style.dart';
import 'package:assists_landing/screens/mobile_view/contact_us_view_mobile.dart';
import 'package:assists_landing/screens/mobile_view/empower_veiw_mobile.dart';
import 'package:assists_landing/screens/mobile_view/footer_view_mobile.dart';
import 'package:assists_landing/screens/mobile_view/home_veiw_mobile.dart';
import 'package:assists_landing/screens/mobile_view/portfolio_view_mobile.dart';

class ParentViewMobile extends StatefulWidget {
  const ParentViewMobile({super.key});

  @override
  State<ParentViewMobile> createState() => _ParentViewMobileState();
}

class _ParentViewMobileState extends State<ParentViewMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
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
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const HomeViewMobile(),
                const EmpowerViewMobile(),
                const PortfolioViewMobile(),
                // AboutUsViewMobile(),
                const ContactUsViewMobile(),
                const FooterViewMobile(),
                // Add more pages here
              ],
            ),
          ),
        ],
      ),
    );
  }
}
