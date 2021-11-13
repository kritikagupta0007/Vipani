import 'package:flutter/material.dart';
import 'package:vipani/features/presentation/pages/buyerpage.dart';
import 'package:vipani/features/presentation/pages/callpage.dart';
import 'package:vipani/features/presentation/pages/sellerpage.dart';

class MessageWidget extends StatefulWidget {
  const MessageWidget({Key? key}) : super(key: key);

  @override
  _MessageWidgetState createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            labelColor: Colors.red,
            unselectedLabelColor: Colors.white70,
            indicatorColor: Colors.red,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(text: "Calls"),
              Tab(text: "Seller"),
              Tab(text: "Buyer"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[CallPage(), SellerPage(), BuyerPage()],
        ),
      ),
    );
  }
}
