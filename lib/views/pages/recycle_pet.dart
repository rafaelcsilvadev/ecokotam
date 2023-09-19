import 'package:ecokotam/views/assets/images/images.dart';
import 'package:ecokotam/views/widgets/info_card.dart';
import 'package:flutter/material.dart';
import '../widgets/app_bar_ecokotam.dart';

class RecyclePet extends StatelessWidget {
  const RecyclePet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarEcokotam(
          title: 'Reciclar Pet',
          hasLeading: true,
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Align(
            alignment: Alignment.topCenter,
            child: InfoCard(
              image: ImagesEcokotam.artesanato,
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              widget: Column(
                children: [
                  SizedBox(
                    width: constraints.maxWidth,
                    child: const Text(
                      'Vocês sabiam que podemos reaproveitar os lixos que descartamos, '
                      'bom podemos utilizar as garrafas pets como um artesanato, planta enfeites '
                      'para as casas entre outras coisas que podemos fazer com a garrafa pet.',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: constraints.maxWidth,
                    child: const Text(
                      'A partir da garrafa PET, é possível confeccionar uma série '
                          'de itens para sua casa, como porta-objetos, utensílios '
                          'para a cozinha, luminárias e outras peças de decoração, '
                          'vassouras ecológicas ou até mesmo é possível utilizá-la '
                          'para armazenar água ou óleo de cozinha.',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: constraints.maxWidth,
                    child: const Text(
                      'Outra opção é fazer um vaso de plantas de garrafa PET.',
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
