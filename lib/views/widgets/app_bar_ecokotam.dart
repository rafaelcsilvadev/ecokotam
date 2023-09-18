import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarEcokotam extends StatelessWidget implements PreferredSizeWidget {
  const AppBarEcokotam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.grey,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light));
    return PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}
