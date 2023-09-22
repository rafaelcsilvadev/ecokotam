import 'package:ecokotam/views/theme/colors/colors.dart';
import 'package:flutter/material.dart';

class ElevationButtonEcokotram extends StatelessWidget {
  final double width;
  final Function onPressed;
  final String text;

  ElevationButtonEcokotram(
      {Key? key,
      required this.width,
      required this.onPressed,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsEcokotam.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5), // <-- Radius
        ),
      ),
      onPressed: () => onPressed(),
      child: Container(
        alignment: Alignment.center,
        width: width,
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
