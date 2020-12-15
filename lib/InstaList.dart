import 'package:flutter/material.dart';
import 'package:instagram_clone/InstaStories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => index == 0
            ? SizedBox(child: InstaStories(), height: deviceSize.height * 0.15)
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // First ROw
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: [
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://images.unsplash.com/photo-1567784177951-6fa58317e16b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=334&q=80'),
                                      fit: BoxFit.fill)),
                            ),
                            SizedBox(width: 10.0),
                            Text("_shreyanhbafna_",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                        IconButton(
                          icon: Icon(Icons.more_vert),
                          onPressed: null,
                        )
                      ],
                    ),
                  ),

                  // Second Row
                  Flexible(
                      fit: FlexFit.loose,
                      child: Image.network(
                          'https://images.unsplash.com/photo-1573729030734-10fca8f2003b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80',
                          fit: BoxFit.fill)),

                  // Third Row

                  Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.heart),
                                SizedBox(width: 16.0),
                                Icon(FontAwesomeIcons.comment),
                                SizedBox(width: 16.0),
                                Icon(FontAwesomeIcons.paperPlane),
                                SizedBox(width: 16.0)
                              ],
                            ),
                            Icon(FontAwesomeIcons.bookmark)
                          ])),

                  // ROw 4
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                        "Liked by _shreyanshbafna_, suyash.bafna and 121 others",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),

                  // ROw 5
                  Padding(
                      padding: EdgeInsets.fromLTRB(16.0, 8.0, 0.0, 8.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://images.unsplash.com/photo-1567784177951-6fa58317e16b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=334&q=80'),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Add a comment..."),
                            ),
                          )
                        ],
                      ))
                ],
              ));
  }
}
