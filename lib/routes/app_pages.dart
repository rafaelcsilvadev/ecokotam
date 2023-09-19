import 'package:ecokotam/routes/routes.dart';
import 'package:ecokotam/views/pages/menu.dart';
import 'package:ecokotam/views/pages/objective.dart';
import 'package:ecokotam/views/pages/signIn.dart';
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
  ];
}