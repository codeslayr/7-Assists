import 'package:flutter/material.dart';
import 'package:assists_landing/screens/mobile_view/home_veiw_mobile.dart';
import 'package:assists_landing/screens/web_view/home_veiw_web.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints) {
      if (constraints.maxWidth < 600) {
        return HomeViewMobile();
      } else if (constraints.maxWidth < 900) {
        return HomeVeiwWeb();
      } else {
        return HomeVeiwWeb();
      }
    });
  }
}
