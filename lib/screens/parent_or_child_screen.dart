import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_path/widget/avatar_button_widget.dart';
import 'package:safe_path/widget/button_widget.dart';
import 'package:safe_path/screens/login_signup_screen.dart' show AuthType;

class ParentOrChildScreen extends StatelessWidget {
  ParentOrChildScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthType authType = Get.arguments as AuthType;

    String title;

    switch (authType) {
      case AuthType.login:
        title = 'Sign In As';
        break;
      case AuthType.signup:
        title = 'Sign Up As';
        break;
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: SizedBox(
              width: 210,
              child: CustomButton(
                onPressed: () {},
                text: title,
                fontSize: Theme.of(context).textTheme.displayLarge!.fontSize!,
                buttonType: ButtonType.primary,
                roundedValue: 16,
                height: 60,
              ),
            ),
          ),
          Column(
            children: [
              Column(
                children: [
                  Text(
                    "PARENT",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize:
                          Theme.of(context).textTheme.displayLarge!.fontSize!,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AvatarButton(onTap: () {}, path: "assets/icons/parent.svg")
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Text(
                    "CHILD",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize:
                          Theme.of(context).textTheme.displayLarge!.fontSize!,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AvatarButton(onTap: () {}, path: "assets/icons/child.svg")
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
