import 'package:ecokotam/views/assets/images/images.dart';
import 'package:ecokotam/views/widgets/info_card.dart';
import 'package:flutter/material.dart';
import '../widgets/app_bar_ecokotam.dart';

class RecycleOrganic extends StatelessWidget {
  const RecycleOrganic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarEcokotam(
          title: 'Reciclar Organico',
          hasLeading: true,
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Align(
            alignment: Alignment.topCenter,
            child: InfoCard(
              image: ImagesEcokotam.esterco2,
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              widget: Column(
                children: [
                  SizedBox(
                    width: constraints.maxWidth,
                    child: const Text(
                      'Ja os lixos orgânico como a Compostagem: o melhor destino para o seu lixo orgânico.',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: constraints.maxWidth,
                    child: const Text(
                      'Dessa forma, o resíduo orgânico que seria destinado a aterros sanitários, por exemplo,'
                          ' é transformado para que a matéria orgânica e os nutrientes ali presentes sejam '
                          'reutilizados no plantio de novos vegetais, reciclando assim a matéria orgânica.',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: constraints.maxWidth,
                    child: const Text(
                      'A principal forma de se reciclar resíduos orgânicos é a compostagem.. '
                      'Este processo envolve transformações (decomposição biológica) promovidas '
                      'por microorganismos do solo que têm na matéria orgânica sua fonte de energia, '
                       'nutrientes minerais e carbono',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
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
