import 'dart:math';
import 'package:flutter/material.dart';
import './tweet.dart';

class TweetCard extends StatelessWidget {
  final Tweet tweet;

  const TweetCard({Key key, this.tweet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[300]))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(tweet.avatar),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 14.0, horizontal: 9.2),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 4.0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 5.0),
                              child: Text(
                                tweet.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0),
                              ),
                            ),
                            Text(
                              '@${tweet.handle}',
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text('·'),
                            ),
                            Text(Random().nextInt(10).toString() + 'm')
                          ],
                        ),
                      ),
                      Text(tweet.message),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.reply,
                                  color: Colors.grey[500],
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.0),
                                ),
                                Text(Random().nextInt(50).toString())
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.repeat,
                                  color: Colors.grey[500],
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.0),
                                ),
                                Text(Random().nextInt(50).toString())
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.grey[500],
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.0),
                                ),
                                Text(Random().nextInt(50).toString())
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.share,
                                  color: Colors.grey[500],
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
