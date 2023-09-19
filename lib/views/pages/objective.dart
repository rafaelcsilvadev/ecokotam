import 'package:ecokotam/views/assets/images/images.dart';
import 'package:ecokotam/views/widgets/info_card.dart';
import 'package:flutter/material.dart';
import '../widgets/app_bar_ecokotam.dart';

class Objective extends StatelessWidget {
  const Objective({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarEcokotam(
          title: 'Objetivo',
          hasLeading: true,
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Align(
            alignment: Alignment.topCenter,
            child: InfoCard(
              image: ImagesEcokotam.limpeza,
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              widget: Column(
                children: [
                  SizedBox(
                    width: constraints.maxWidth,
                    child: const Text(
                      '\u2022 Eliminar os lixos do bairro',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: constraints.maxWidth,
                    child: const Text(
                      '\u2022 Mostrar para os moradores que alguns lixos tem sim utilidade, e podem ser reutilizados.',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
