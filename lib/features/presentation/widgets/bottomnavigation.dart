import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marquee/marquee.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:vipani/features/data/repository/fake_repository.dart';
import 'package:vipani/features/presentation/pages/add_video_page.dart';
import 'package:vipani/features/presentation/widgets/shoppreview.dart';
import 'package:vipani/features/presentation/pages/left_page.dart';
import 'package:vipani/features/presentation/pages/right_page.dart';
import 'package:vipani/features/presentation/pages/message.dart';

class BottomNavigationWidget extends StatefulWidget {
  BottomNavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _pageController = 0;
  late List<Widget> _pages;

  @override
  void initState() {
    _pages = [
      ShopPreviewWidget(),
      LeftPage(),
      LeftPage(),
      MessageWidget(),
      LeftPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            selectedItemColor: Colors.red,
            selectedFontSize: 0,
            unselectedItemColor: Colors.white,
            currentIndex: _pageController,
            onTap: (value) {
              _pageController = value;
              setState(() {});
            },
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/Home 3.png")), label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/Search 2.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/add.png")), label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/Message 30.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/profile1.jpg")), label: "")
            ],
          ),
          body: _pages[_pageController],
        );
      },
    );
  }
}
