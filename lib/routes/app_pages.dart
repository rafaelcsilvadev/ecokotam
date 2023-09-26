import 'package:ecokotam/routes/routes.dart';
import 'package:ecokotam/views/pages/days.dart';
import 'package:ecokotam/views/pages/location.dart';
import 'package:ecokotam/views/pages/wouldStray.dart';
import 'package:ecokotam/views/pages/menu.dart';
import 'package:ecokotam/views/pages/objective.dart';
import 'package:ecokotam/views/pages/project.dart';
import 'package:ecokotam/views/pages/recycle_organic.dart';
import 'package:ecokotam/views/pages/recycle_pet.dart';
import 'package:ecokotam/views/pages/social_network.dart';
import 'package:ecokotam/views/pages/split.dart';
import 'package:ecokotam/views/pages/times.dart';
import 'package:ecokotam/views/pages/tip_course.dart';
import 'package:ecokotam/views/pages/tip_youtube.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
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
      name: Routes.wouldStay,
      page: () => const WouldStay(),
    ),
    GetPage(
      name: Routes.tipYouTube,
      page: () => TipYouTube(),
    ),
    GetPage(
      name: Routes.tipCourse,
      page: () => TipCourse(),
    ),
    GetPage(
      name: Routes.split,
      page: () => const Split(),
    ),
    GetPage(
      name: Routes.project,
      page: () => const Project(),
    ),
    GetPage(
      name: Routes.socialNetwork,
      page: () => const SocialNetwork(),
    ),
    GetPage(
      name: Routes.times,
      page: () => const Times(),
    ),
    GetPage(
      name: Routes.days,
      page: () => const Days(),
    ),
    GetPage(
      name: Routes.location,
      page: () => const Location(),
    ),
  ];
}