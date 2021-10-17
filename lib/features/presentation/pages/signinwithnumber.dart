import 'package:flutter/material.dart';
import 'package:vipani/features/presentation/pages/verifynumber.dart';
import 'package:vipani/features/presentation/widgets/button.dart';
import 'package:vipani/features/presentation/widgets/textfield.dart';
import 'package:vipani/features/presentation/widgets/headtext.dart';
import 'package:vipani/page_const.dart';

class MobileSignIn extends StatefulWidget {
  const MobileSignIn({Key? key}) : super(key: key);

  @override
  _MobileSignInState createState() => _MobileSignInState();
}

class _MobileSignInState extends State<MobileSignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Stack(
        children: [
          HeadTextWidget(title: "Log in or sign up to Vipani"),
          CountryWidget(),
          MobileNumberWidget(),
          ButtonWidget(
            text: "Continue",
            onTap: () {
              Navigator.pushNamed(context, PageConst.verifynumberPage);
            },
          ),
        ],
      ),
    );
  }
}
