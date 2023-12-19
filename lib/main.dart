import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_path/screens/parent_or_child_screen.dart';
import 'package:get/get.dart';
import 'package:safe_path/routes.dart';

// import './pages/welcome_screen.dart';
import 'screens/login_signup_screen.dart';

final ThemeData kLightTheme = ThemeData().copyWith(
  colorScheme: ThemeData().colorScheme.copyWith(
      primary: const Color(0xFF2093EE),
      // secondary: Colors.blue,
      background: const Color(0xFFF9F9F9)),
  textTheme: ThemeData().textTheme.copyWith(
        displayLarge: TextStyle(
            fontSize: 32,
            color: const Color(0xFFF9F9F9),
            fontFamily:
                GoogleFonts.roboto(fontWeight: FontWeight.w600).fontFamily),
      ),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: kLightTheme,
      initialRoute: Routes.loginSignUpRoute,
      getPages: getPages,
    );
  }
}
