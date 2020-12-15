import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class InstaStories extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text('Stories', style: TextStyle(fontWeight: FontWeight.bold)),
      Row(
        children: [
          Icon(Icons.play_arrow),
          Text("Watch All", style: TextStyle(fontWeight: FontWeight.bold))
        ],
      )
    ],
  );

  final stories = Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1567784177951-6fa58317e16b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=334&q=80'),
                              fit: BoxFit.fill)),
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                    ),
                    index == 0
                        ? Positioned(
                            right: 10.0,
                            child: CircleAvatar(
                                child: Icon(Icons.add),
                                backgroundColor: Colors.blueAccent,
                                radius: 10.0),
                          )
                        : Container()
                  ],
                )),
      ));

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[topText, stories],
        ));
  }
}
