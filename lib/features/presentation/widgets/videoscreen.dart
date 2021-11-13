import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marquee/marquee.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:video_player/video_player.dart';
import 'package:vipani/features/data/repository/fake_repository.dart';
import 'package:vipani/features/presentation/pages/home_screen.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen>
    with AutomaticKeepAliveClientMixin {
  int _followingForYouController = 0;
  TextStyle _followingForYouStyle =
      TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500);

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        var controller;
        return Scaffold(
            body: Stack(
          children: <Widget>[
            CarouselSlider.builder(
              options: CarouselOptions(
                scrollDirection: Axis.vertical,
                viewportFraction: 1.0,
                aspectRatio: 0.10,
                autoPlay: false,
                height: 900,
              ),
              itemCount: FakeRepository.data.length,
              itemBuilder:
                  (BuildContext context, int index, int pageViewIndex) {
                return HomeScreen(index: index);
              },
            ),
            _topWidgetForLeftIcon(),
            _topWidgetFollowingAndTrending(),
            _topWidgetForRightIcon(),
          ],
        ));
      },
    );
  }

  Widget _topWidgetFollowingAndTrending() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: 38),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
                onTap: () {
                  setState(() {
                    _followingForYouController = 0;
                  });
                },
                child: Text("Following",
                    style: _textStyleFollowingForYou(
                        _followingForYouController == 0
                            ? Colors.white
                            : Colors.white60))),
            SizedBox(
              width: 15,
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    _followingForYouController = 1;
                  });
                },
                child: Text("Trending",
                    style: _textStyleFollowingForYou(
                        _followingForYouController == 1
                            ? Colors.white
                            : Colors.white60)))
          ],
        ),
      ),
    );
  }

  Widget _topWidgetForLeftIcon() {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
        width: 80,
        height: 80,
        child: Image.asset(
          "assets/logo.png",
        ),
      ),
    );
  }

  Widget _topWidgetForRightIcon() {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
        width: 80,
        height: 80,
        child: Image.asset(
          "assets/righticon.png",
        ),
      ),
    );
  }

  TextStyle _textStyleFollowingForYou(Color color) {
    return TextStyle(fontSize: 18, color: color, fontWeight: FontWeight.w500);
  }
}
