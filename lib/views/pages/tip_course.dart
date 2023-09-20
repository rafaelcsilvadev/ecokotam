import 'package:ecokotam/views/assets/images/images.dart';
import 'package:ecokotam/views/widgets/info_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/app_bar_ecokotam.dart';

class TipCourse extends StatelessWidget {
  TipCourse({Key? key}) : super(key: key);

  final Uri _urlCourse= Uri.parse('http://linkbio.co/5082418PZiFzy');

  _launchUrl(Uri url) {
      launchUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarEcokotam(
          title: 'Dicas Curso',
          hasLeading: true,
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Align(
            alignment: Alignment.topCenter,
            child: InfoCard(
              image: ImagesEcokotam.esterco,
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              widget: Column(
                children: [
                  SizedBox(
                    width: constraints.maxWidth,
                    child: InkWell(
                      onTap: () => _launchUrl(_urlCourse),
                      child: const Text(
                        '\u2022 Cursos Sugeridos.',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                            color: Colors.green
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: constraints.maxWidth,
                    child: const Text(
                      'O link para você fazer um curso, online, gratuito e com certificado, sobre compostagem e jardinagem.',
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
