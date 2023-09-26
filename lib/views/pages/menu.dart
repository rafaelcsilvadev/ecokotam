import 'package:ecokotam/routes/routes.dart';
import 'package:ecokotam/views/widgets/actions_button.dart';
import 'package:ecokotam/views/widgets/app_bar_ecokotam.dart';
import 'package:ecokotam/views/widgets/layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarEcokotam(
          title: 'EcoKOTAM',
          hasLeading: false,
        ),
        body: WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Layout(
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                widget: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: constraints.maxWidth * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 100,
                            height: 110,
                            child: ActionButton(
                              onPressed: () => Navigator.pushNamed(
                                  context, Routes.location),
                              title: 'Localização',
                              icon: Icons.map,
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            height: 110,
                            child: ActionButton(
                              onPressed: () => Navigator.pushNamed(
                                  context, Routes.objective),
                              title: 'Objetivo',
                              icon: Icons.newspaper,
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            height: 110,
                            child: ActionButton(
                              onPressed: () => Navigator.pushNamed(context, Routes.days),
                              title: 'Dias',
                              icon: Icons.date_range,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: constraints.maxWidth * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 100,
                            height: 110,
                            child: ActionButton(
                              onPressed: () => Navigator.pushNamed(context, Routes.times),
                              title: 'Horários',
                              icon: Icons.schedule,
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            height: 110,
                            child: ActionButton(
                              onPressed: () => Navigator.pushNamed(context, Routes.recycleOrganic),
                              title: 'Reutilizar\nOrgânico',
                              icon: Icons.recycling,
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            height: 110,
                            child: ActionButton(
                              onPressed: () => Navigator.pushNamed(context, Routes.recyclePet),
                              title: 'Reutilizar\nPet',
                              icon: Icons.recycling_outlined,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: constraints.maxWidth * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 100,
                            height: 110,
                            child: ActionButton(
                              onPressed: () => Navigator.pushNamed(context, Routes.wouldStay),
                              title: 'Onde Ficaria',
                              icon: Icons.location_on,
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            height: 110,
                            child: ActionButton(
                              onPressed: () => Navigator.pushNamed(context, Routes.tipYouTube),
                              title: 'Dicas\nYou Tube',
                              icon: Icons.thumb_up,
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            height: 110,
                            child: ActionButton(
                              onPressed: () => Navigator.pushNamed(context, Routes.tipCourse),
                              title: 'Dicas\nCurso',
                              icon: Icons.thumb_up_alt_outlined,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: constraints.maxWidth * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 100,
                            height: 110,
                            child: ActionButton(
                              onPressed: () => Navigator.pushNamed(context, Routes.split),
                              title: 'Separação',
                              icon: Icons.check_box,
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            height: 110,
                            child: ActionButton(
                              onPressed: () => Navigator.pushNamed(context, Routes.socialNetwork),
                              title: 'Rede Social',
                              icon: Icons.public,
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            height: 110,
                            child: ActionButton(
                              onPressed: () => Navigator.pushNamed(context, Routes.project),
                              title: 'Projeto',
                              icon: Icons.group,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Container(
                    //   margin: const EdgeInsets.only(top: 20),
                    //   width: constraints.maxWidth * 0.9,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       SizedBox(
                    //         width: 100,
                    //         height: 110,
                    //         child: ActionButton(
                    //           onPressed: () =>
                    //               Navigator.pushNamed(context, Routes.signIn),
                    //           title: 'Sair',
                    //           icon: Icons.logout,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
