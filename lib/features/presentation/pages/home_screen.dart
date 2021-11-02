import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:vipani/features/presentation/pages/add_video_page.dart';
import 'package:vipani/features/presentation/pages/home_page.dart';
import 'package:vipani/features/presentation/pages/left_page.dart';
import 'package:vipani/features/presentation/pages/right_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
//  with AutomaticKeepAliveClientMixin
{
  int _pageIndex = 1;

  PageController _pageController = PageController(
    initialPage: 1,
  );
  List<Widget> _pages = [
    LeftPage(),
    HomePage(),
    RightPage(),
  ];

  
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Scaffold(
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => AddVideoPage()));
              },
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniCenterFloat,
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              currentIndex: _pageIndex,
              onTap: (value) {
                _pageIndex = value;
                _pageController.animateToPage(value,
                    duration: Duration(milliseconds: 200),
                    curve: Curves.linear);
                setState(() {});
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.mail), label: "Messages"),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Profile")
              ],
            ),
            body: PageView(
              controller: _pageController,
              onPageChanged: (page) {
                setState(() {
                  _pageIndex = page;
                });
              },
              children: _pages,
            ));
      },
    );
  }
}
