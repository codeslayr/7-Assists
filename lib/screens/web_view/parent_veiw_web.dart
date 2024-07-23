import 'package:flutter/material.dart';
import 'package:seven_assists/constants/text_style.dart';
import 'package:seven_assists/screens/web_view/home_veiw_web.dart';

class ParentViewWeb extends StatefulWidget {
  const ParentViewWeb({super.key});

  @override
  State<ParentViewWeb> createState() => _ParentViewWebState();
}

class _ParentViewWebState extends State<ParentViewWeb> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxScrolled) {
              return <Widget>[
                SliverOverlapAbsorber(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverAppBar(
                    backgroundColor: Colors.white,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            "7 Assists",
                            style: kMainHeadingTextStyle,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: const TabBar(
                            dividerColor: Colors.grey,
                            indicatorColor: Colors.black,
                            labelColor: Colors.blue,
                            unselectedLabelColor: Colors.black,
                            dividerHeight: 0,
                            tabs: [
                              Text(
                                "Services",
                                style: kSectionSubheadingTextStyle,
                              ),
                              Text(
                                "Our Work",
                                style: kSectionSubheadingTextStyle,
                              ),
                              Text(
                                "About us",
                                style: kSectionSubheadingTextStyle,
                              ),
                              Text(
                                "Contact us",
                                style: kSectionSubheadingTextStyle,
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
                    // flexibleSpace: FlexibleSpaceBar(
                    //   background: Container(
                    //     color: Colors.blue[100],
                    //   ),
                    // ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                ListView(
                  children: const [
                    HomeVeiwWeb(),
                  ],
                ),
                ListView(
                  children: const [
                    HomeVeiwWeb(),
                  ],
                ),
                ListView(
                  children: const [
                    HomeVeiwWeb(),
                  ],
                ),
                ListView(
                  children: const [
                    HomeVeiwWeb(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
