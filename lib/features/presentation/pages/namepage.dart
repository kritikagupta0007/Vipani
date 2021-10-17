import 'package:flutter/material.dart';
import 'package:vipani/features/presentation/pages/passwordpage.dart';
import 'package:vipani/features/presentation/widgets/button.dart';
import 'package:vipani/features/presentation/widgets/textfield.dart';
import 'package:vipani/features/presentation/widgets/headtext.dart';
import 'package:vipani/page_const.dart';

class NamePage extends StatefulWidget {
  const NamePage({Key? key}) : super(key: key);

  @override
  _NamePageState createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Stack(
        children: [
          HeadTextWidget(title: "Whats your Name"),
          NameWidget(),
          ButtonWidget(
              text: "Continue",
              onTap: () {
                Navigator.pushNamed(context, PageConst.passwordPage);
              }),
        ],
      ),
    );
  }
}
