import 'package:flutter/material.dart';
import 'package:vipani/features/presentation/widgets/buyerpage.dart';
import 'package:vipani/features/presentation/widgets/callpage.dart';
import 'package:vipani/features/presentation/widgets/sellerpage.dart';

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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: SafeArea(
            child: TabBar(
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
        ),
        body: TabBarView(
          children: <Widget>[CallPage(), SellerPage(), BuyerPage()],
        ),
      ),
    );
  }
}
