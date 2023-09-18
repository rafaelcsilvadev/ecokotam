import 'package:ecokotam/routes/routes.dart';
import 'package:ecokotam/views/pages/signIn.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.signIn,
      page: () => const SignIn(),
    ),
  ];
}