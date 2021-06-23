import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Row(
            children: [
              Image.asset(
                "images/hamburger.png",
                color: Color(0xff55acee),
              ),
              Expanded(
                child: Image.asset(
                  "images/twitter.png",
                  height: 30,
                  width: 30,
                ),
              ),
            ],
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(Icons.dark_mode_outlined, color: Color(0xff55acee)),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff55acee), width: 3),
                              color: Colors.orange,
                              shape: BoxShape.circle),
                          child: CircleAvatar(
                            minRadius: 15,
                            maxRadius: 20,
                            backgroundImage: AssetImage("images/blackgirl.jpg"),
                          ),
                        ),
                        Text(
                          "Your Story",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff55acee), width: 3),
                              color: Colors.orange,
                              shape: BoxShape.circle),
                          child: CircleAvatar(
                            minRadius: 15,
                            maxRadius: 20,
                            backgroundImage: AssetImage("images/redgirl.jpg"),
                          ),
                        ),
                        Text(
                          "Belle",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff55acee), width: 3),
                              color: Colors.orange,
                              shape: BoxShape.circle),
                          child: CircleAvatar(
                            minRadius: 15,
                            maxRadius: 20,
                            backgroundImage: AssetImage("images/smallboy.jpg"),
                          ),
                        ),
                        Text(
                          "Vincent",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Story(
                      name: 'Angel',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Story(name: 'Mary'),
                    SizedBox(
                      width: 10,
                    ),
                    Story(
                      name: 'Angel',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Story(
                      name: 'Angel',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.shade800,
              ),
              TweetWidget(),
              Divider(
                color: Colors.grey.shade800,
              ),
              TweetWidget(),
            ],
          ),
        ));
  }
}

class TweetWidget extends StatelessWidget {
  const TweetWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff55acee), width: 3),
                              color: Colors.white,
                              shape: BoxShape.circle),
                          child: CircleAvatar(
                            minRadius: 15,
                            maxRadius: 20,
                            backgroundImage: AssetImage("images/smallboy.jpg"),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Flutter Engineer",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.verified,
                            color: Color(0xff55acee),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text("@GoogleFlutter",
                              style: TextStyle(
                                color: Color(0xff55acee),
                                fontSize: 12,
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Text("2hr ago",
                              style: TextStyle(
                                color: Color(0xff55acee),
                                fontSize: 12,
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_vert, color: Colors.white)
            ],
          ),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              height: 300,
              width: 600,
              child: Center(
                child: Text("Tweet goes here",
                    style: TextStyle(color: Colors.white)),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.thumb_up, color: Color(0xff55acee)),
                Icon(Icons.thumb_down_alt_outlined, color: Colors.white),
                Icon(Icons.comment_outlined, color: Colors.white),
                Image.asset("images/retweet.png",
                    height: 25, width: 25, color: Colors.white),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Story extends StatelessWidget {
  const Story({
    required this.name,
    this.image,
    Key? key,
  }) : super(key: key);
  final String? name;
  final Image? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xff55acee), width: 3),
              color: Colors.white,
              shape: BoxShape.circle),
          child: CircleAvatar(
            minRadius: 15,
            maxRadius: 20,
            backgroundImage: AssetImage("images/redgirl.jpg"),
          ),
        ),
        Text(
          "$name",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
