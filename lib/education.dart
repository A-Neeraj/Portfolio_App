import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:my_portfolio/certificate.dart';

import 'data.dart';

class Education extends StatefulWidget {
  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
              ),
              margin: EdgeInsets.only(left: 20, right: 20, top: 8),
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 15, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Class X',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.1,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Rowdies',
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Row(
                        children: <Widget>[
                          Text(
                            'School',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.055,
                            ),
                          ),
                          Text(
                            ': Sacred Heart High School',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.055,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.009,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Board',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: MediaQuery.of(context).size.width * 0.055,
                          ),
                        ),
                        Text(
                          ': ICSE',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.055,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.009,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Percentage',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: MediaQuery.of(context).size.width * 0.055,
                          ),
                        ),
                        Text(
                          ': 89.4',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.055,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.009,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'View Certificate',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Certificate(
                                              data: CertificateData(
                                                  name: "Class 10"))));
                                })
                        ])),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
              ),
              margin: EdgeInsets.only(left: 20, right: 20, top: 8),
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 15, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Class XII',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.1,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Rowdies',
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Row(
                        children: <Widget>[
                          Text(
                            'School',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.055,
                            ),
                          ),
                          Text(
                            ': D. A. V. Model School',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.055,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.009,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Board',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: MediaQuery.of(context).size.width * 0.055,
                          ),
                        ),
                        Text(
                          ': CBSE',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.055,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.009,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Percentage',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: MediaQuery.of(context).size.width * 0.055,
                          ),
                        ),
                        Text(
                          ': 91.6',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.055,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.009,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'View Certificate',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Certificate(
                                              data: CertificateData(
                                                  name: "Class 12"))));
                                })
                        ])),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
              ),
              margin: EdgeInsets.only(left: 20, right: 20, top: 8),
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 15, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'B. Tech',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.1,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Rowdies',
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Row(
                        children: <Widget>[
                          Text(
                            'College',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.055,
                            ),
                          ),
                          Text(
                            ': GITAM Institute of Technology',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.055,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.009,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'University',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: MediaQuery.of(context).size.width * 0.055,
                          ),
                        ),
                        Text(
                          ': GITAM University',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.055,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.009,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'CGPA',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: MediaQuery.of(context).size.width * 0.055,
                          ),
                        ),
                        Text(
                          ': 9.32',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.055,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.009,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'View Certificate',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Certificate(
                                              data: CertificateData(
                                                  name: "B. Tech"))));
                                })
                        ])),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
