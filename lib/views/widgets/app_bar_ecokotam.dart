import 'package:ecokotam/views/theme/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarEcokotam extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  bool hasLeading = false;

  AppBarEcokotam(
      {Key? key, required this.title, required this.hasLeading})
      : super(key: key);

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
        leading: hasLeading == true ? Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () {
              Navigator.pop(context);
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        }) : null,
        automaticallyImplyLeading: hasLeading,
        title: hasLeading == false ? Center(
          child: Text(
            title,
            style: const TextStyle(fontFamily: 'Inter'),
          ),
        ) : Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(right: 50),
          child: Text(
            title,
            style: const TextStyle(fontFamily: 'Inter'),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}
