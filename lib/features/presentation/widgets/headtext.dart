import 'package:flutter/material.dart';

class HeadTextWidget extends StatelessWidget {
  final String title;
  const HeadTextWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(28, 0, 10, 0),
        child: Text(
          title,
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Color.fromRGBO(242, 242, 242, 1),
              fontFamily: 'Inter',
              fontSize: 45,
              fontWeight: FontWeight.normal,
              height: 1.4375),
        ));
  }
}
