import 'package:flutter/material.dart';
import 'package:vipani/features/presentation/pages/landing.dart';
import 'package:vipani/features/presentation/widgets/button.dart';
import 'package:vipani/features/presentation/widgets/headtext.dart';
import 'package:vipani/page_const.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadTextWidget(title: "Reset Password"),
          _newpassword(),
          _reEnterPassword(),
          SizedBox(height: 40),
          ButtonWidget(
              text: "Continue",
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, PageConst.landingPage, (route) => false);
              }),
        ],
      ),
    );
  }

  Widget _newpassword() {
    return Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Container(
          width: 600,
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Create new password",
                hintStyle: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ));
  }

  Widget _reEnterPassword() {
    return Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Container(
          width: 600,
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Re-Enter Password",
                hintStyle: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ));
  }
}
