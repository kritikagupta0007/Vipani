import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marquee/marquee.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:video_player/video_player.dart';
import 'package:vipani/features/data/repository/fake_repository.dart';
import 'package:vipani/features/presentation/pages/home_screen.dart';
import 'package:vipani/features/presentation/pages/left_page.dart';
import 'package:vipani/features/presentation/pages/right_page.dart';
import 'package:vipani/features/presentation/widgets/bottomnavigation.dart';
import 'package:vipani/features/presentation/widgets/videoscreen.dart';

class ShopPreviewWidget extends StatefulWidget {
  const ShopPreviewWidget({Key? key}) : super(key: key);

  @override
  _ShopPreviewWidgetState createState() => _ShopPreviewWidgetState();
}

class _ShopPreviewWidgetState extends State<ShopPreviewWidget> {
  int index = 0;
  void updateIndex(int currentIndex) {
    print("Updating.....");
    print(currentIndex);
    index = currentIndex;
  }

  @override
  void initState() {
    super.initState();
    _onPageViewChange(index);
  }

  final PageController _pageViewController = PageController(initialPage: 1);
  _onPageViewChange(int currentIndex) {
    //index = currentIndex;
    print("hello");
    print(index);
    setState(() {
      index = currentIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("widget index...");
    print(index);
    return Scaffold(
      body: PageView(
          controller: _pageViewController,
          onPageChanged: _onPageViewChange,
          children: <Widget>[
            LeftPage(),
            VideoScreen(updateIndex),
            RightPage(index: index),
          ]),
    );
  }
}
