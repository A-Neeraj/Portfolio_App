import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activities'),
        centerTitle: true,
      ),
      body: SafeArea(child: Text('Activities')),
    );
  }
}
