import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final Widget widget;
  final double width;
  final double height;

  const Layout({Key? key, required this.widget, required this.width, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Ecokotam',
      home: SizedBox(
        width: width,
        height: height,
        child: SingleChildScrollView(
           child: widget,
        ),
      )
    );
  }
}
