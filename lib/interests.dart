import 'package:flutter/material.dart';

class Interests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interests'),
        centerTitle: true,
      ),
      body: SafeArea(child: Text('Interests')),
    );
  }
}
