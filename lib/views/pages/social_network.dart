import 'package:ecokotam/views/assets/images/images.dart';
import 'package:ecokotam/views/widgets/info_card.dart';
import 'package:flutter/material.dart';
import '../widgets/app_bar_ecokotam.dart';

class SocialNetwork extends StatelessWidget {
  const SocialNetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarEcokotam(
          title: 'Rede Social',
          hasLeading: true,
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Align(
            alignment: Alignment.topCenter,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImagesEcokotam.instagram),
                    fit: BoxFit.cover),
              ),
            ),
          );
        }),
      ),
    );
  }
}
