import 'package:flutter/material.dart';
import './tweet.dart' show Tweet, fakeTweets;
import './tweet-card.dart' show TweetCard;

class Home extends StatelessWidget {
  final List<Tweet> tweets = fakeTweets;

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
          onPressed: null,
        ),
        body: ListView.builder(
          itemCount: tweets.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: TweetCard(tweet: tweets[index]),
              contentPadding: EdgeInsets.all(0.0),
            );
          },
        ),
      ),
    );
  }
}
