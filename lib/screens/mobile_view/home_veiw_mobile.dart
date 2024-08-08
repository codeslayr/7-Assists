import 'package:flutter/material.dart';
import 'package:assists_landing/constants/custom_color.dart';
import 'package:assists_landing/constants/text_style.dart';
import 'package:video_player/video_player.dart';

class HomeViewMobile extends StatefulWidget {
  const HomeViewMobile({super.key});

  @override
  _HomeViewMobileState createState() => _HomeViewMobileState();
}

class _HomeViewMobileState extends State<HomeViewMobile> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/images/fotos2.mp4');
    _initializeVideoPlayerFuture = _controller.initialize().then((_) {
      setState(
          () {}); // Ensure the first frame is shown after the video is initialized
      _controller.play(); // Start playing the video automatically
    });
    _controller.setLooping(true); // Loop the video
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(top: screenHeight / 80),
      width: screenWidth,
      color: WhitebackgroundCustomcolor,
      child: Stack(
        children: [
          Positioned(
            top: 320,
            child: Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: screenWidth / 14,
                  right: screenWidth / 14,
                  bottom: screenHeight / 8,
                  top: screenHeight / 40,
                ),
                child: Container(
                  width: 700,
                  height: 400,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 45,
                        height: 70,
                        width: 72,
                        child: Image.asset(
                          'assets/images/rectangle.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 38),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: mSectionHeadingTextStyle.copyWith(
                                    letterSpacing: -2, height: -1),
                                children: [
                                  TextSpan(text: "Improving Football"),
                                  WidgetSpan(
                                    child: ShaderMask(
                                      shaderCallback: (bounds) {
                                        return LinearGradient(
                                          colors: [
                                            Color(0xFFFF7448),
                                            Color(0xFFFF4848),
                                            Color(0xFF6248FF),
                                          ],
                                        ).createShader(Rect.fromLTWH(
                                            0, 0, bounds.width, bounds.height));
                                      },
                                      child: Text(
                                        "Clubs Online Presence",
                                        style:
                                            mSectionHeadingTextStyle.copyWith(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  TextSpan(text: "\n1 Club At A Time!"),
                                ],
                              ),
                            ),
                            SizedBox(height: screenHeight / 40),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  // Your onPressed function here
                                },
                                child: Text(
                                  "Get Started",
                                  style: kSectionSubheadingTextStyle.copyWith(
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              FutureBuilder(
                future: _initializeVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
