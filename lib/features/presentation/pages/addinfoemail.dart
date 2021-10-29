import 'package:flutter/material.dart';
import 'package:vipani/features/presentation/pages/landing.dart';
import 'package:vipani/features/presentation/widgets/headtext.dart';
import 'package:vipani/features/presentation/widgets/button.dart';
import 'package:vipani/features/presentation/widgets/textfield.dart';
import 'package:vipani/page_const.dart';

class AddInfo extends StatefulWidget {
  const AddInfo({Key? key}) : super(key: key);

  @override
  _AddInfoState createState() => _AddInfoState();
}

class _AddInfoState extends State<AddInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadTextWidget(title: "Add Info"),
          _fullName(),
          _strongPassword(),
          SizedBox(height: 50),
          ButtonWidget(
              text: "Continue",
              onTap: () {
                Navigator.pushNamed(context, PageConst.homePage);
              }),
        ],
      ),
    );
  }

  Widget _fullName() {
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
                hintText: "Enter your full name",
                hintStyle: TextStyle(
                    color: Colors.grey[700], fontWeight: FontWeight.bold),
                border: InputBorder.none,
              ),
            ),
          ),
        ));
  }

  Widget _strongPassword() {
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
                hintText: "Create strong password",
                hintStyle: TextStyle(
                    color: Colors.grey[700], fontWeight: FontWeight.bold),
                border: InputBorder.none,
              ),
            ),
          ),
        ));
  }
}
