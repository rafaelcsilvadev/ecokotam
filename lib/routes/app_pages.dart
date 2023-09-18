import 'package:ecokotam/routes/routes.dart';
import 'package:ecokotam/views/pagess/signIn.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.SIGN_IN,
      page: () => const SignIn(),
    ),
  ];
}