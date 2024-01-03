// import 'package:flutter/material.dart';
// import 'package:safe_path/widget/button_widget.dart';
// import 'package:safe_path/screens/parent_or_child_screen.dart';
// import 'package:get/get.dart';
// import 'package:safe_path/routes.dart';

// enum AuthType { login, signup }

// class LogInSignUpScreen extends StatelessWidget {
//   const LogInSignUpScreen({super.key});

//   static const routeName = '/';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Image.asset('assets/images/logo.png'),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 32),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 CustomButton(
//                   onPressed: () {
//                     Get.toNamed(Routes.parentOrChileRoute,
//                         arguments: AuthType.signup);
//                   },
//                   text: 'Sign Up',
//                   buttonType: ButtonType.primary,
//                   roundedValue: 16,
//                   height: 60,
//                   fontSize: Theme.of(context).textTheme.displayLarge!.fontSize!,
//                 ),
//                 const SizedBox(height: 16),
//                 CustomButton(
//                   onPressed: () {
//                     Get.toNamed(Routes.parentOrChileRoute,
//                         arguments: AuthType.login);
//                   },
//                   text: 'Log In',
//                   buttonType: ButtonType.primary,
//                   roundedValue: 16,
//                   height: 60,
//                   fontSize: Theme.of(context).textTheme.displayLarge!.fontSize!,
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
