import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: <Widget>[
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
              image: new AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            )),
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Card(
                        child: Row(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              width: 200.0,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 100.0,
                  ),
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/w_1.jpg'),
                  ),
                ],
              ),
              Container()
            ],
          ),
        ]),
      ),
    );
  }
}
