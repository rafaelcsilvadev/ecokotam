import 'package:ecokotam/views/theme/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onPressed;

  const ActionButton({Key? key, required this.title, required this.icon, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsEcokotam.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0), // Adjust the border radius as needed// Border color
        ),
      ),
      onPressed: () => onPressed(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: ColorsEcokotam.white, size: 40,),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Inter',
                color: ColorsEcokotam.white,
                fontSize: 9,
                fontWeight: FontWeight.w700,

              ),
            ),
          )
        ],
      ),
    );
  }
}
