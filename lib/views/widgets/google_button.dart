import 'package:ecokotam/views/assets/images/images.dart';
import 'package:ecokotam/views/theme/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class GoogleButton extends StatelessWidget {
  final double width;
  final double height;

  const GoogleButton({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: ColorsEcokotam.white),
        onPressed: () => {},
        child: Container(
          width: width,
          height: height,
          child: Row(
            children: [
              const Image(
                image: Svg(ImagesEcokotam.google),
                width: 24,
                height: 24,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child:  Text(
                  'Fazer login com o google',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    color: ColorsEcokotam.black,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
