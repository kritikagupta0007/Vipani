import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:vipani/features/presentation/pages/namepage.dart';
import 'package:vipani/features/presentation/widgets/button.dart';
import 'package:vipani/features/presentation/widgets/headtext.dart';
import 'package:vipani/page_const.dart';

class VerifyNumberPage extends StatefulWidget {
  const VerifyNumberPage({Key? key}) : super(key: key);

  @override
  _VerifyNumberPageState createState() => _VerifyNumberPageState();
}

class _VerifyNumberPageState extends State<VerifyNumberPage> {
  TextEditingController _pinCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadTextWidget(title: "Verify your Number"),
          _text(),
          _pincodecontroller(),
          _verifyOtp(),
          ButtonWidget(
            text: "Verify",
            onTap: () {
              Navigator.pushNamed(context, PageConst.namePage);
            },
          ),
        ],
      ),
    );
  }

  Widget _text() {
    return Padding(
        padding: EdgeInsets.fromLTRB(80, 40, 40, 0),
        child: Text(
          'Enter the OTP sent to +91 6848958236',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'Inter',
              fontSize: 16,
              letterSpacing: 0.25,
              fontWeight: FontWeight.normal,
              height: 1.4285714285714286),
        ));
  }

  Widget _verifyOtp() {
    return Padding(
      padding: EdgeInsets.fromLTRB(60, 30, 50, 0),
      child: InkWell(
        onTap: () {},
        child: Text(
          "Resend OTP",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }

  Widget _pincodecontroller() {
    return Padding(
      padding: EdgeInsets.fromLTRB(50, 20, 50, 0),
      child: PinCodeTextField(
        controller: _pinCodeController,
        maxLength: 5,
        pinBoxRadius: 10,
        pinBoxColor: Colors.white,
      ),
    );
  }
}
