import 'package:get/get.dart';
import 'package:safe_path/screens/login_signup_screen.dart';
import 'package:safe_path/screens/parent_or_child_screen.dart';

class Routes {
  static String loginSignUpRoute = '/login-sign-up';
  static String parentOrChileRoute = '/parent-or-child';
}

final getPages = [
  GetPage(
    name: Routes.loginSignUpRoute,
    page: () => const LogInSignUpScreen(),
  ),
  GetPage(
    name: Routes.parentOrChileRoute,
    page: () => ParentOrChildScreen(),
  ),
];
