import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:my_portfolio/data.dart';

// ignore: must_be_immutable
class Activities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
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
              Container(
                margin: EdgeInsets.only(top: height * 0.28),
                height: height * 0.7,
                child: ListView.builder(
                    itemCount: ExperienceData.achievements.length,
                    itemBuilder: (context, index) {
                      List<String> list1 = [];
                      List<String> list = [];
                      for (var i in ExperienceData.achievements[index]
                          ['details'])
                        i.entries.forEach((e) => list.add(e.key));
                      list1 = LinkedHashSet<String>.from(list).toList();
                      return Card(
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 5,
                        child: ExpansionTile(
                          title: Text(ExperienceData.achievements[index]
                              ['achievement']),
                          children: <Widget>[
                            for (var i in ExperienceData.achievements[index]
                                ['details'])
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 20, right: 20, top: 8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 2.0,
                                          spreadRadius: 0.0,
                                          offset: Offset(2.0,
                                              2.0), // shadow direction: bottom right
                                        )
                                      ],
                                    ),
//                        height: 50,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: <Widget>[
                                        for (var j = 0; j < list1.length; j++)
                                          Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Text(
                                              list1[j].toString() +
                                                  ': ' +
                                                  i[list1[j].toString()],
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'EBGaramond',
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(bottom: 5))
                                ],
                              ),
                          ],
                        ),
                      );
                    }),
              ),
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: height * 0.4,
                  width: double.infinity,
                  decoration: new BoxDecoration(
                      image: new DecorationImage(
                          image: new AssetImage("assets/images/Activities.jpg"),
                          fit: BoxFit.fill)),
                ),
              ),
              Container(
                height: height * 0.4,
                alignment: Alignment.center,
                child: Text(
                  'Activities \n and Achievements',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: height * 0.045,
                    color: Colors.red,
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

class Seg {
  String key;
  String value;
  Seg(this.key, this.value);
  @override
  String toString() {
    return this.key;
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
