import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const ButtonWidget({Key? key, required this.text, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
      child: InkWell(
        onTap: onTap,
        child: Container(
            width: 600,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                gradient: LinearGradient(
                    begin: Alignment(0.5, -0.5),
                    end: Alignment(0.5, 0.5),
                    colors: [
                      Color.fromRGBO(255, 75, 43, 1),
                      Color.fromRGBO(255, 65, 108, 1)
                    ])),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Inter',
                  fontSize: 24,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 2),
            )),
      ),
    );
  }
}
