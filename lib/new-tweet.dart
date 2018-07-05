import "package:flutter/material.dart";

class NewTweet extends StatefulWidget {
  var _inputValue = "";

  @override
  NewTweetState createState() {
    return new NewTweetState();
  }
}

class NewTweetState extends State<NewTweet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Color(0xff3399ff),
        ),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 20.0),
            child: Row(
              children: <Widget>[
                RaisedButton(
                  child: Text('Drafts'),
                  onPressed: () => print('Drafts'),
                  shape: StadiumBorder(),
                  elevation: 0.0,
                  color: Colors.white,
                  textColor: Color(0xff3399ff),
                ),
                RaisedButton(
                  child: Text('Tweet'),
                  onPressed: () {
                    Navigator.of(context).pop<String>(widget._inputValue);
                  },
                  highlightColor: Colors.teal,
                  shape: StadiumBorder(),
                  color: Color(0xff3399ff),
                  textColor: Colors.white,
                  elevation: 0.0,
                )
              ],
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              onChanged: (inputValue) =>
                  setState(() => widget._inputValue = inputValue),
              maxLines: 5,
              autofocus: true,
              decoration: InputDecoration(
                labelText: "What's happening?",
                border: InputBorder.none,
                icon: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://pbs.twimg.com/profile_images/971370258568269826/IwP_HL-F_normal.jpg"),
                ),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 80.0,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        children: [
                          Icon(
                            Icons.camera_alt,
                            color: Color(0xff3399ff),
                            size: 30.0,
                          ),
                          Text("Camera")
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                    ),
                    Container(
                      width: 80.0,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        children: [
                          Icon(
                            Icons.live_tv,
                            color: Color(0xff3399ff),
                            size: 30.0,
                          ),
                          Text("Live")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                  color: Colors.grey[300],
                ))),
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.photo,
                            size: 30.0,
                            color: Color(0xff3399ff),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.gif,
                            size: 30.0,
                            color: Color(0xff3399ff),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.poll,
                            size: 30.0,
                            color: Color(0xff3399ff),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.location_on,
                            size: 30.0,
                            color: Color(0xff3399ff),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.cloud_circle,
                          size: 30.0,
                          color: Colors.grey[400],
                        ),
                        Container(
                          width: 2.0,
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                        Icon(
                          Icons.add_circle,
                          size: 30.0,
                          color: Color(0xff3399ff),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
