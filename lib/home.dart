import 'dart:async';

import 'package:flutter/material.dart';
import './new-tweet.dart';
import './tweet.dart' show Tweet, fakeTweets;
import './tweet-card.dart' show TweetCard;

class Home extends StatefulWidget {
  List<Tweet> get tweets => fakeTweets.reversed.toList();

  @override
  HomeState createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffffffff),
          elevation: 0.5,
          leading: Padding(
            padding: EdgeInsets.all(12.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://pbs.twimg.com/profile_images/971370258568269826/IwP_HL-F_normal.jpg"),
            ),
          ),
          title: Text(
            "Home",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            indicatorColor: Color(0xff3399ff),
            labelColor: Color(0xff3399ff),
            unselectedLabelColor: Colors.grey[500],
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.search)),
              Tab(icon: Icon(Icons.notifications)),
              Tab(icon: Icon(Icons.mail))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Color(0xff3399ff),
          onPressed: _getData,
        ),
        body: RefreshIndicator(
          onRefresh: _refresh,
          child: ListView.builder(
            itemCount: widget.tweets.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: TweetCard(tweet: widget.tweets[index]),
                contentPadding: EdgeInsets.all(0.0),
              );
            },
          ),
        ),
      ),
    );
  }

  Future<Null> _refresh() async {
    await Future.delayed(Duration(seconds: 2));
    return null;
  }

  Future _getData() async {
    String v = await Navigator.of(context).push(MaterialPageRoute<String>(
        builder: (BuildContext context) => NewTweet(), fullscreenDialog: true));
    if (v.length > 0) {
      print(v);
      setState(() {
        fakeTweets.add(Tweet(
            "Bassam Isamil",
            "skippednote",
            "https://pbs.twimg.com/profile_images/971370258568269826/IwP_HL-F_normal.jpg",
            v));
      });
    }
  }
}
