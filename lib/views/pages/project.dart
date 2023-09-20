import 'package:ecokotam/views/assets/images/images.dart';
import 'package:ecokotam/views/widgets/info_card.dart';
import 'package:flutter/material.dart';
import '../widgets/app_bar_ecokotam.dart';

class Project extends StatelessWidget {
  const Project({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarEcokotam(
          title: 'Projeto',
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
                      'Na imagem acima você consegue vê um pouco o nosso projeto.',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: constraints.maxWidth,
                    child: const Text(
                      'No contexto de um compromisso contínuo com a responsabilidade ambiental '
                          'e a melhoria das condições de trabalho para os catadores '
                          'de resíduos, anunciamos uma adaptação significativa nas '
                          'lixeiras de lixo existentes. Esta inovação consiste na '
                          'implementação de uma divisória estratégica dentro das '
                          'lixeiras, segregando eficazmente os resíduos em duas categorias '
                          'distintas: lixos comuns e lixos recicláveis. Esta transformação '
                          'busca endereçar uma série de preocupações, visando principalmente '
                          'otimizar as operações de coleta e proporcionar um ambiente de trabalho '
                          'mais seguro e saudável para os catadores. Ao separar os lixos comuns dos '
                          'recicláveis no momento do descarte, reduzimos substancialmente a necessidade '
                          'de que os catadores tenham que vasculhar manualmente resíduos misturados, '
                          'muitas vezes insalubres e perigosos.',
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
