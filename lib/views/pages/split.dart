import 'package:ecokotam/views/assets/images/images.dart';
import 'package:ecokotam/views/widgets/info_card.dart';
import 'package:flutter/material.dart';
import '../widgets/app_bar_ecokotam.dart';

class Split extends StatelessWidget {
  const Split({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarEcokotam(
          title: 'Separação',
          hasLeading: true,
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Align(
            alignment: Alignment.topCenter,
            child: InfoCard(
              image: ImagesEcokotam.lixo,
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              limitScroll: 0.51,
              widget: Column(
                children: [
                  SizedBox(
                    width: constraints.maxWidth,
                    child: const Text(
                      'Separe o lixo seco (reciclável) do lixo úmido (orgânico e comum) '
                      'utilizando latões diferentes. Caso disponha de espaço, '
                      'utilize sacos de plástico para cada um dos materiais '
                      'recicláveis: vidro, plástico, metal e papel. Evite amassar '
                      'e rasgar os papeis que seguirão para reciclagem e lembre-se '
                      'de esvaziar todas as embalagens.',
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
                      'Você não pode simplesmente guardar o vidro em sacolas plásticas. '
                      'Por serem pontiagudos e cortantes, eles podem rasgar as sacolas e '
                      'machucar quem for pegá-las. O ideal é embrulhá-lo em jornais e, '
                      'depois disso, guardar em caixas de leite ou de papelão. Com isso, '
                      'é praticamente impossível que o vidro fique para '
                      'fora da embalagem e machuque alguém.',
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
                      'Qual a importância do descarte correto do lixo doméstico?.',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: constraints.maxWidth,
                    child: const Text(
                      'Se descartados de maneira incorreta, esses resíduos podem contaminar '
                      'o solo e os lençóis freáticos, colocando em risco a saúde pública',
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
