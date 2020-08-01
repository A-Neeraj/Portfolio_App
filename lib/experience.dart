import 'package:flutter/material.dart';
import 'package:my_portfolio/data.dart';

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Work Experience'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: ExperienceData.experience.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(ExperienceData.experience[index]['companyName']),
              children: <Widget>[
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      ExperienceData.experience[index]['details'],
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            );
          }),
    );
  }
}
