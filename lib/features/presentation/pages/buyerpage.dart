import 'package:flutter/material.dart';

class BuyerPage extends StatefulWidget {
  const BuyerPage({Key? key}) : super(key: key);

  @override
  _BuyerPageState createState() => _BuyerPageState();
}

class _BuyerPageState extends State<BuyerPage> {
  int ind = 0;
  final item = List.generate(10, (index) => "Jane Copper");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: item.length,
          itemBuilder: (context, ind) {
            final items = item[ind];
            return ListTile(
              leading: Container(
                width: 40,
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(80)),
                  child: Image.asset(
                    "assets/gallery.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(items),
              subtitle: Text("Perfect!"),
              trailing: Text("11:30 P.M."),
            );
          }),
    );
  }
}
