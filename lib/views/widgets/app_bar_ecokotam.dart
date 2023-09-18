import 'package:ecokotam/views/theme/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarEcokotam extends StatelessWidget implements PreferredSizeWidget {
  const AppBarEcokotam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: ColorsEcokotam.green,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light));
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: AppBar(
        backgroundColor: ColorsEcokotam.green,
        elevation: 3,
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            'Ecokotam',
            style: TextStyle(fontFamily: 'Inter'),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}
