import 'package:flutter/material.dart';
import 'package:vipani/features/presentation/pages/passwordpage.dart';
import 'package:vipani/features/presentation/widgets/button.dart';
import 'package:vipani/features/presentation/widgets/textfield.dart';
import 'package:vipani/features/presentation/widgets/headtext.dart';
import 'package:vipani/page_const.dart';

class LoginGoogle extends StatefulWidget {
  const LoginGoogle({Key? key}) : super(key: key);

  @override
  _LoginGoogleState createState() => _LoginGoogleState();
}

class _LoginGoogleState extends State<LoginGoogle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Column(
        children: <Widget>[
          HeadTextWidget(title: "Log in or sign up to Vipani"),
          EmailWidget(),
          SizedBox(height: 90),
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
