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
import 'package:vipani/features/presentation/widgets/shop_preview.dart';
import 'package:vipani/features/presentation/widgets/videoscreen.dart';

class HomePage extends StatefulWidget {
  late int index;
  HomePage({Key? key, required this.index}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _followingForYouController = 0;
  // TextStyle _followingForYouStyle =
  //     TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500);

  final PageController _pageViewController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(controller: _pageViewController,
      
       children: <Widget>[
        LeftPage(),
        VideoScreen(),
        RightPage(index: widget.index),
      ]),
    );
  }
}
