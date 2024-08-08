import 'package:flutter/material.dart';
import 'package:assists_landing/screens/mobile_view/parent_veiw_mobile.dart';
import 'package:assists_landing/screens/web_view/parent_veiw_web.dart';

class ParentView extends StatefulWidget {
  const ParentView({super.key});

  @override
  State<ParentView> createState() => _ParentViewState();
}

class _ParentViewState extends State<ParentView> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: LayoutBuilder(builder: (builder, constraints) {
        if (constraints.maxWidth < 600) {
          return ParentViewMobile();
        } else if (constraints.maxWidth < 1100) {
          return ParentViewWeb();
        } else {
          return ParentViewWeb();
        }
      }),
    );
  }
}
