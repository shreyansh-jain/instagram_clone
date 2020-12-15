import 'package:flutter/material.dart';
import 'package:instagram_clone/InstaStories.dart';

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
                                          'https://images.unsplash.com/photo-1573729030734-10fca8f2003b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'),
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
                  Flexible(
                      fit: FlexFit.loose,
                      child: Image.network(
                          'https://images.unsplash.com/photo-1573729030734-10fca8f2003b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80',
                          fit: BoxFit.fill))
                ],
              ));
  }
}
