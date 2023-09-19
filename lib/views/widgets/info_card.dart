import 'package:ecokotam/views/assets/images/images.dart';
import 'package:ecokotam/views/theme/colors/colors.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final double width;
  final double height;
  final Widget widget;
  final String image;

  const InfoCard(
      {Key? key,
      required this.width,
      required this.height,
      required this.widget,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.95,
      height: height * 0.8,
      margin: const EdgeInsets.only(top: 10),
      child: Card(
        shape: RoundedRectangleBorder(
            side: BorderSide(
              color: ColorsEcokotam.green,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.asset(
                image,
                width: width * 0.95,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SizedBox(
                height: height * 0.42,
                child: SingleChildScrollView(
                  child: widget,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
