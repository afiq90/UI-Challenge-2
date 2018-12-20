import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'bottomContent.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.purple,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'UI Challenge 2'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final title;

  MyHomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   primary: true,
      //   // title: Text('$title'),
      //   // backgroundColor: Colors.white,
      //   // centerTitle: true,
      //   elevation: 0,
      // ),
      body: SafeArea(
        child: _buildBody(),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget _buildBody() {
    return ListView(
      children: <Widget>[
        _buildProfile(),
        SizedBox(
          height: 20,
        ),
        _buildPersonHorizontalContent(),
        SizedBox(
          height: 20,
        ),
        _buildbottomContent()
      ],
    );
  }

  Widget _buildProfile() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      // crossAxisAlignment: CrossAxisAlignment
      children: <Widget>[
        Container(
          height: 320,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topRight,
            colors: [const Color(0xFF9D28DC), const Color(0xFF7D67E5)],
          )),
          // color: Colors.pinkAccent,
          child: Column(
            children: <Widget>[
              Container(
                height: 20,
                // color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                // color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Profile',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                // color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('images/emmawatson.png'),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 80,
                      // color: Colors.orangeAccent,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Emma Watson',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            Text('New York',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                // color: Colors.green,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 80,
                          // color: Colors.lightBlue,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Followers',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0),
                                ),
                                Text(
                                  '5.7M',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //this container is divider
                        Container(
                          height: 40.0,
                          width: 1.0,
                          color: Colors.red,
                          margin:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                        ),
                        Container(
                          height: 80,
                          // color: Colors.lightBlue,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Following',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0),
                                ),
                                Text(
                                  '924',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //this container is divider
                        Container(
                          height: 40.0,
                          width: 1.0,
                          color: Colors.red,
                          margin:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                        ),
                        Container(
                          height: 80,
                          // color: Colors.lightBlue,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Total Like',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0),
                                ),
                                Text(
                                  '1.7K',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPersonHorizontalContent() {
    return Container(
      // color: Colors.blueGrey,
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,

        // mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisSize: MainAxisSize.max,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            BuildPersonContent(
              title: 'Live Broadcast',
              startColor: const Color(0xFF9D28DC),
              endColor: const Color(0xFF7D67E5),
            ),
            BuildPersonContent(
              title: 'My Wallet',
              startColor: const Color(0xFF8930e8),
              endColor: const Color(0xFF1663c7),
            ),
            BuildPersonContent(
              title: 'Game Center',
              startColor: const Color(0xFFe86830),
              endColor: const Color(0xFFc7166f),
            ),
            BuildPersonContent(
              title: 'My Fans',
              startColor: const Color(0xFF4d2c19),
              endColor: const Color(0xFFe8e230),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildbottomContent() {
    return Column(
      children: <Widget>[
        BottomContent(
          title: 'Memories',
          leadingIcon: Icon(Icons.camera),
          trailingIcon: Icon(Icons.arrow_forward_ios),
        ),
        BottomContent(
          title: 'Favorites',
          leadingIcon: Icon(Icons.hearing),
          trailingIcon: Icon(Icons.arrow_forward_ios),
        ),
        BottomContent(
          title: 'Presents',
          leadingIcon: Icon(Icons.camera),
          trailingIcon: Icon(Icons.arrow_forward_ios),
        ),
         BottomContent(
          title: 'Friends',
          leadingIcon: Icon(Icons.camera),
          trailingIcon: Icon(Icons.arrow_forward_ios),
        ),
         BottomContent(
          title: 'Achievement',
          leadingIcon: Icon(Icons.camera),
          trailingIcon: Icon(Icons.arrow_forward_ios),
        ),
         BottomContent(
          title: 'Kambing',
          leadingIcon: Icon(Icons.camera),
          trailingIcon: Icon(Icons.arrow_forward_ios),
        ),
        BottomContent(
          title: 'Ayam',
          leadingIcon: Icon(Icons.camera),
          trailingIcon: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}

class BuildPersonContent extends StatefulWidget {
  final title;
  final Color startColor;
  final Color endColor;

  const BuildPersonContent(
      {Key key, this.title, this.startColor, this.endColor})
      : super(key: key);

  @override
  BuildPersonContentState createState() => BuildPersonContentState();
}

class BuildPersonContentState extends State<BuildPersonContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      // child: Card(
      // color: Colors.brown,
      // elevation: 12.5,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 80,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topRight,
            colors: [widget.startColor, widget.endColor],
          ),
        ),
        child: Text(
          widget.title,
          style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
              fontWeight: FontWeight.normal),
          textAlign: TextAlign.justify,
          maxLines: 2,
          // softWrap: false,
        ),
      ),
      // ),
    );
  }
}
