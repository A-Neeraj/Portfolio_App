import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Interests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                0.1,
                0.4,
                0.6,
                0.9
              ],
                  colors: [
                Colors.yellow,
                Colors.red,
                Colors.indigo,
                Colors.teal
              ])),
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                padding: EdgeInsets.only(top: height * 0.37),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Image.asset(
                            'assets/images/Programming.png',
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            'assets/images/ReadingBook.png',
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(
                          'Programming',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        )),
                        Expanded(
                          child: Text(
                            'Reading Books',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Image.asset(
                            'assets/images/Music.png',
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            'assets/images/Game.png',
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(
                          'Listening Music',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        )),
                        Expanded(
                          child: Text(
                            'Playing Games',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Image.asset(
                            'assets/images/Writing.png',
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            'assets/images/Apps.png',
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(
                          'Writing Poems',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        )),
                        Expanded(
                          child: Text(
                            'Developing mobile Apps and Games',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: height * 0.4,
                  width: double.infinity,
                  decoration: new BoxDecoration(
                      image: new DecorationImage(
                          image: new AssetImage("assets/images/Interests.jpg"),
                          fit: BoxFit.fill)),
                ),
              ),
              Container(
                height: height * 0.4,
                alignment: Alignment.center,
                child: Text(
                  'Interests',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50.0,
                    fontFamily: 'SonsieOne',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
