import 'package:flutter/material.dart';
import 'package:instagram_clone/InstaHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone UI',
      debugShowCheckedModeBanner: false,
      home: InstaHome(),
      theme: ThemeData(
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(
              headline6: TextStyle(color: Colors.black, fontFamily: "Aveny"))),
    );
  }
}
