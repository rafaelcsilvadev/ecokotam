import 'package:ecokotam/views/assets/images/images.dart';
import 'package:ecokotam/views/widgets/info_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/app_bar_ecokotam.dart';

class TipYouTube extends StatelessWidget {
  TipYouTube({Key? key}) : super(key: key);

  final Uri _url13Tip = Uri.parse('https://youtu.be/6yDD6vpNgbo');
  final Uri _url16Tip = Uri.parse('https://youtu.be/U3fGstzhXvI');
  final Uri _urlGarden = Uri.parse('https://youtu.be/umV3P25B0Nc');

  _launchUrl(Uri url) {
      launchUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarEcokotam(
          title: 'Dicas You Tube',
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
                    child: InkWell(
                      onTap: () => _launchUrl(_url13Tip),
                      child: const Text(
                        '\u2022 13 Ideias Brilhantes com Garrafa Pet.',
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
                    child: InkWell(
                      onTap: () => _launchUrl(_url16Tip),
                      child: const Text(
                        '\u2022 16 Brilhantes Ideias com Garrafa Plástica Artesanato.',
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
                    child: InkWell(
                      onTap: () => _launchUrl(_urlGarden),
                      child: const Text(
                        '\u2022 Horta Suspensa em Garrafa Pet.',
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
                      'Neste link você tem passo a passo de como reutilizar as garrafas pets',
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
