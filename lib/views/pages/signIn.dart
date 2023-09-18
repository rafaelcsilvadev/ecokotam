import 'package:ecokotam/routes/routes.dart';
import 'package:ecokotam/views/assets/images/images.dart';
import 'package:ecokotam/views/theme/colors/colors.dart';
import 'package:ecokotam/views/widgets/google_button.dart';
import 'package:ecokotam/views/widgets/layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: ColorsEcokotam.white,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark));
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Layout(
                widget: Container(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth,
                  color: ColorsEcokotam.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        ImagesEcokotam.logo,
                        width: 200,
                        height: 200,
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 50),
                        child: Text(
                          'Seja bem vindo ao Ecokotam.',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: ColorsEcokotam.black,
                            inherit: false
                          ),
                        ),
                      ),
                      GoogleButton(
                        onPressed: () => Navigator.pushNamed(context, Routes.menu),
                        height: 50,
                        width: constraints.maxWidth * 0.8,
                      )
                    ],
                  ),
                ),
                width: constraints.maxWidth,
                height: constraints.maxHeight);
          },
        ),
      ),
    );
  }
}
