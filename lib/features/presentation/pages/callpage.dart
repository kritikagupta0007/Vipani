import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
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
                    "assets/profile1.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(items),
              subtitle: Text("Today.7:30 A.M."),
              trailing: ImageIcon(AssetImage("assets/Vector.png")),
            );
          }),
    );
  }
}
