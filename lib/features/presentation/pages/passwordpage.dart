import 'package:flutter/material.dart';
import 'package:vipani/features/presentation/pages/landing.dart';
import 'package:vipani/features/presentation/pages/resetpassword.dart';
import 'package:vipani/features/presentation/widgets/button.dart';
import 'package:vipani/features/presentation/widgets/textfield.dart';
import 'package:vipani/features/presentation/widgets/headtext.dart';
import 'package:vipani/page_const.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Stack(
        children: [
          HeadTextWidget(title: "Enter  your  Password"),
          PasswordWidget(),
          _forgotPassword(),
          ButtonWidget(
            text: "Continue",
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, PageConst.landingPage, (route) => false);
            },
          ),
        ],
      ),
    );
  }

  Widget _forgotPassword() {
    return Padding(
      padding: EdgeInsets.fromLTRB(140, 320, 20, 0),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, PageConst.resetPassword),
        child: Text(
          "Forgot Password",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
