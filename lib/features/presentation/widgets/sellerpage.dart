import 'package:flutter/material.dart';

class SellerPage extends StatefulWidget {
  const SellerPage({Key? key}) : super(key: key);

  @override
  _SellerPageState createState() => _SellerPageState();
}

class _SellerPageState extends State<SellerPage> {
  int ind = 0;
  final item = List.generate(10, (index) => "Floyd Miles");

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
                    "assets/profile3.jpeg",
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
