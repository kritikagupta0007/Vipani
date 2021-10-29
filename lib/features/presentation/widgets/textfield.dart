import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmailWidget extends StatelessWidget {
  final TextEditingController? controller;
  const EmailWidget({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              controller: controller,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email",
                  hintStyle: TextStyle(
                      color: Colors.grey[700], fontWeight: FontWeight.bold)),
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
        padding: EdgeInsets.fromLTRB(25, 20, 20, 0),
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
                hintStyle: TextStyle(
                    color: Colors.grey[700], fontWeight: FontWeight.bold),
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
                hintText: "Enter your Name",
                hintStyle: TextStyle(
                    color: Colors.grey[700], fontWeight: FontWeight.bold),
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
                hintText: "Enter Conuntry",
                hintStyle: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                border: InputBorder.none,
                prefixText: "+91 ",
                suffixIcon: Icon(Icons.keyboard_arrow_right_outlined),
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
                hintText: "Mobile Number",
                hintStyle: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                border: InputBorder.none,
                suffixIcon: Icon(Icons.password_outlined),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
        ));
  }
}
