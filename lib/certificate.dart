import 'package:flutter/material.dart';
import 'package:zoom_widget/zoom_widget.dart';
import 'package:zoomable_image/zoomable_image.dart';
import 'data.dart';

class Certificate extends StatelessWidget {
  final CertificateData data;
  Certificate({this.data});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ZoomableImage(
        ExactAssetImage('assets/images/' + data.name + '.jpg'));
  }
}
