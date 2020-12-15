import 'package:flutter/material.dart';
import 'package:instagram_clone/InstaList.dart';
import 'package:instagram_clone/InstaStories.dart';

class InstaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(flex: 1, child: InstaStories()),
        Flexible(child: InstaList())
      ],
    );
  }
}