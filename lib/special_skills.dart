import 'package:flutter/material.dart';

class SpecialSkills extends StatefulWidget {
  @override
  _SpecialSkillsState createState() => _SpecialSkillsState();
}

class _SpecialSkillsState extends State<SpecialSkills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Special Skills'),
      ),
      body: SafeArea(child: Text('Special Skills')),
    );
  }
}
