import 'package:ecokotam/routes/routes.dart';
import 'package:ecokotam/views/pages/location.dart';
import 'package:ecokotam/views/pages/menu.dart';
import 'package:ecokotam/views/pages/objective.dart';
import 'package:ecokotam/views/pages/recycle_organic.dart';
import 'package:ecokotam/views/pages/recycle_pet.dart';
import 'package:ecokotam/views/pages/signIn.dart';
import 'package:ecokotam/views/pages/tip_youtube.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.signIn,
      page: () => const SignIn(),
    ),
    GetPage(
      name: Routes.menu,
      page: () => const Menu(),
    ),
    GetPage(
      name: Routes.objective,
      page: () => const Objective(),
    ),
    GetPage(
      name: Routes.recycleOrganic,
      page: () => const RecycleOrganic(),
    ),
    GetPage(
      name: Routes.recyclePet,
      page: () => const RecyclePet(),
    ),
    GetPage(
      name: Routes.location,
      page: () => const Location(),
    ),
    GetPage(
      name: Routes.tipYouTube,
      page: () => TipYouTube(),
    ),
  ];
}