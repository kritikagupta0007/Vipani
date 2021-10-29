import 'package:flutter/material.dart';
import 'package:vipani/features/presentation/pages/changepassword.dart';
import 'package:vipani/features/presentation/widgets/button.dart';
import 'package:vipani/features/presentation/widgets/headtext.dart';
import 'package:vipani/page_const.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadTextWidget(title: "Reset Password"),
          _text(),
          _emailormobile(),
          SizedBox(height: 50),
          ButtonWidget(
              text: "Continue",
              onTap: () {
                Navigator.pushNamed(context, PageConst.changePassword);
              }),
        ],
      ),
    );
  }

  Widget _text() {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 20, 70, 0),
      child: Text(
        'Enter your email is assosiated your account, we’ve sent an email to reset password',
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontFamily: 'Inter',
            fontSize: 16,
            letterSpacing: 0.5,
            fontWeight: FontWeight.normal,
            height: 1.5),
      ),
    );
  }

  Widget _emailormobile() {
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
                hintText: "Enter or mobile",
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
