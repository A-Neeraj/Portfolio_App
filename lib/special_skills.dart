import 'package:flutter/material.dart';
import 'package:my_portfolio/data.dart';

class SpecialSkills extends StatefulWidget {
  @override
  _SpecialSkillsState createState() => _SpecialSkillsState();
}

class _SpecialSkillsState extends State<SpecialSkills> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
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
                    itemCount: ExperienceData.specialSkills.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 5,
                        child: ExpansionTile(
                          title: Text(
                              ExperienceData.specialSkills[index]['skill']),
                          children: <Widget>[
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    ExperienceData.specialSkills[index]
                                        ['details'],
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'EBGaramond',
                                    ),
                                  ),
                                ))
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
                          image:
                              new AssetImage("assets/images/SpecialSkills.jpg"),
                          fit: BoxFit.fill)),
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
