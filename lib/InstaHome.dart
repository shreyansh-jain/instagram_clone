import 'package:flutter/material.dart';
import 'package:instagram_clone/InstaBody.dart';

class InstaHome extends StatelessWidget {
  final topBar = new AppBar(
    backgroundColor: Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: Icon(Icons.camera_alt),
    title: SizedBox(
      height: 35.0,
      child: Image.asset("assets/images/insta_logo.png"),
    ),
    actions: <Widget>[
      Padding(
          padding: const EdgeInsets.only(right: 12.0), child: Icon(Icons.send))
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: InstaBody(),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () => {},
            ),
            IconButton(icon: Icon(Icons.search), onPressed: null),
            IconButton(
              icon: Icon(Icons.add_box),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(Icons.account_box),
              onPressed: null,
            )
          ],
        ),
      ),
    );
  }
}
