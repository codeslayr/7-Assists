import 'package:flutter/material.dart';
import 'package:seven_assists/constants/custom_color.dart';
import 'package:seven_assists/constants/text_style.dart';
import 'package:seven_assists/screens/mobile_view/contact_us_view_mobile.dart';
import 'package:seven_assists/screens/mobile_view/empower_veiw_mobile.dart';
import 'package:seven_assists/screens/mobile_view/footer_view_mobile.dart';
import 'package:seven_assists/screens/mobile_view/home_veiw_mobile.dart';
import 'package:seven_assists/screens/mobile_view/portfolio_view_mobile.dart';

class ParentViewMobile extends StatefulWidget {
  const ParentViewMobile({super.key});

  @override
  State<ParentViewMobile> createState() => _ParentViewMobileState();
}

class _ParentViewMobileState extends State<ParentViewMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: WhitebackgroundCustomcolor,
        title: Text(
          '7 ASSISTS',
          style: kMainHeadingTextStyle,
          textAlign: TextAlign.center,
        ),
        centerTitle: true, // Center the title
        elevation: 0, // Remove the shadow under the AppBar
        surfaceTintColor: WhitebackgroundCustomcolor,
      ),
      body: ListView(
        children: [
          const HomeViewMobile(),
          const EmpowerViewMobile(),
          const PortfolioViewMobile(),
          // AboutUsViewMobile(),
          const ContactUsViewMobile(),
          const FooterViewMobile(),
          // Add more pages here
        ],
      ),
    );
  }
}
