import 'package:flutter/material.dart';
import 'package:vipani/features/presentation/pages/loginemail.dart';
import 'package:vipani/features/presentation/pages/logingoogle.dart';
import 'package:vipani/features/presentation/pages/namepage.dart';
import 'package:vipani/features/presentation/pages/signinwithnumber.dart';
import 'package:vipani/features/presentation/pages/signinwithnumber.dart';
import 'package:vipani/page_const.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: -190,
            left: 0,
            child: Container(
                width: 450,
                height: 550,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Rectangle17.png'),
                      fit: BoxFit.fitWidth),
                )),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(18, 18, 18, 0),
                      Color.fromRGBO(18, 18, 18, 0),
                      Color.fromRGBO(18, 18, 18, 1),
                      Color.fromRGBO(18, 18, 18, 1),
                      Color.fromRGBO(18, 18, 18, 1),
                      Color.fromRGBO(18, 18, 18, 1),
                    ]),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(44, 90, 0.8, 0),
            child: Text(
              'Welcome to        Vipani',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Inter',
                  fontSize: 40,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  height: 1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.8, 360, 0.8, 0),
            child: Column(
              children: <Widget>[
                EnterButton(Icons.gamepad, "Continue with google", () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, PageConst.logingooglePage);
                }),
                EnterButton(Icons.facebook, "Continue with facebook", () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, PageConst.namePage);
                }),
                EnterButton(Icons.mobile_friendly, "Continue with mobile", () {
                  Navigator.pushNamed(context, PageConst.mobilesigninPage);
                }),
                EnterButton(Icons.mail, "Continue with gmail", () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, PageConst.gamilLoginPage);
                }),
                _bottomText()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _bottomText() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        child: Text(
          'By continuing, you agree to Vipani Terms&Service and acknowledge you’ve read our Privacy policy',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Inter',
              fontSize: 15,
              height: 1.3),
        ),
      ),
    );
  }
}

class EnterButton extends StatelessWidget {
  IconData icon;
  String text;
  VoidCallback onTap;

  EnterButton(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap: onTap,
        child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.09,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              color: Color.fromRGBO(18, 18, 18, 1),
              border: Border.all(
                color: Color.fromRGBO(39, 39, 39, 1),
                width: 6,
              ),
            ),
            child: Row(
              children: <Widget>[
                SizedBox(width: 15),
                Icon(
                  icon,
                  color: Colors.white,
                ),
                SizedBox(width: 32),
                Text(
                  '$text',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Inter',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      height: 1.5),
                ),
              ],
            )),
      ),
    );
  }
}
