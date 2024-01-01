import 'package:get/get.dart';
import 'package:safe_path/screens/login_signup_screen.dart';
import 'package:safe_path/screens/parent_or_child_screen.dart';
import 'package:safe_path/screens/splash_screen.dart';

class Routes {
  static String splashScreenRoute = '/splash-screen';
  static String parentOrChileRoute = '/parent-or-child';
}

final getPages = [
  GetPage(
    name: Routes.splashScreenRoute,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: Routes.parentOrChileRoute,
    page: () => ParentOrChildScreen(),
  ),
];
