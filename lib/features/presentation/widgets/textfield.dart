import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmailWidget extends StatelessWidget {
  final TextEditingController? controller;
  const EmailWidget({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(20, 150, 20, 0),
        child: Container(
          width: 600,
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Email",
              ),
              autofocus: false,
            ),
          ),
        ));
  }
}

class PasswordWidget extends StatefulWidget {
  const PasswordWidget({Key? key}) : super(key: key);

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(25, 150, 20, 0),
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
                hintText: "Password",
                border: InputBorder.none,
              ),
              autofocus: false,
              obscureText: true,
            ),
          ),
        ));
  }
}

class NameWidget extends StatelessWidget {
  const NameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
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
                hintText: "Enter your Name",
                border: InputBorder.none,
              ),
            ),
          ),
        ));
  }
}

class CountryWidget extends StatelessWidget {
  const CountryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(20, 150, 20, 0),
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
                hintText: "Enter Conuntry",
                border: InputBorder.none,
              ),
            ),
          ),
        ));
  }
}

class MobileNumberWidget extends StatelessWidget {
  const MobileNumberWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(20, 240, 20, 0),
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
                hintText: "Mobile Number",
                border: InputBorder.none,
              ),
              keyboardType: TextInputType.number,
            ),
          ),
        ));
  }
}
