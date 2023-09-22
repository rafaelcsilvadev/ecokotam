import 'package:ecokotam/views/theme/colors/colors.dart';
import 'package:flutter/material.dart';

class CheckBoxEcokotam extends StatelessWidget {
  final bool value;
  final Function onChanged;
  final String text;

  const CheckBoxEcokotam(
      {Key? key,
      required this.value,
      required this.onChanged,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.5, color: ColorsEcokotam.green),
        ),
      ),
      child: Row(
        children: [
          Checkbox(
            checkColor: ColorsEcokotam.white,
            activeColor: ColorsEcokotam.green,
            value: value,
            onChanged: (bool? bool) => onChanged(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontFamily: 'Inter',
              color: ColorsEcokotam.black,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
