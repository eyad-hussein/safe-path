import 'package:get/get.dart';
import 'package:safe_path/screens/parent_or_child_screen.dart';
import 'package:safe_path/screens/splash_screen.dart';
import 'package:safe_path/screens/login_screen.dart';
import 'package:safe_path/screens/signup_screen.dart';

class Routes {
  static String splashScreenRoute = '/splash-screen';
  static String parentOrChileRoute = '/parent-or-child';
  static String loginRoute = '/login';
  static String signupRoute = '/signup';
}

final getPages = [
  GetPage(
    name: Routes.splashScreenRoute,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: Routes.parentOrChileRoute,
    page: () => const ParentOrChildScreen(),
  ),
  GetPage(
    name: Routes.loginRoute,
    page: () => const LoginScreen(),
  ),
  GetPage(
    name: Routes.signupRoute,
    page: () => SignUpScreen(),
  ),
];
