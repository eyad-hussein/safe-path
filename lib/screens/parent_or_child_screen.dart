import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_path/widget/avatar_button_widget.dart';
import 'package:safe_path/widget/button_widget.dart';
import 'package:safe_path/screens/login_signup_screen.dart' show AuthType;
import 'package:safe_path/routes.dart';

class ParentOrChildScreen extends StatelessWidget {
  const ParentOrChildScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(
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
            ),
          )
        ],
      ),
    );
  }
}
