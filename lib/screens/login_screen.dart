import 'package:flutter/material.dart';
import 'package:safe_path/constants.dart';
import 'package:safe_path/controllers/login_controller.dart';
import 'package:safe_path/widget/buttons/inverted_button_widget.dart';
import 'package:safe_path/widget/buttons/primary_button_widget.dart';
import 'package:get/get.dart';
import 'package:safe_path/widget/form/custom_form_field_widget.dart';
import 'package:safe_path/routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.find<LoginController>();

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      final double availableHeight = constraints.maxHeight;

      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 190),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.all(paddingMedium),
                height: availableHeight * 0.75,
                decoration: ShapeDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x29000000),
                      offset: Offset(0, -3),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: spaceSmall,
                    ),
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.displayMedium!.fontSize,
                        fontWeight: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .fontWeight,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(
                      height: spaceExtraLarge,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomFormField(
                          type: CustomFormFieldType.email,
                          controller: loginController.emailController,
                          hintText: 'E-mail',
                        ),
                        const SizedBox(height: paddingMedium),
                        CustomFormField(
                          type: CustomFormFieldType.password,
                          controller: loginController.passwordController,
                          hintText: 'Password',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: spaceExtraLarge,
                    ),
                    PrimaryButton(
                      onPressed: () {
                        loginController.login();
                      },
                      text: 'Sign In',
                      fontSize:
                          Theme.of(context).textTheme.bodyLarge!.fontSize!,
                      borderRadius: borderRadiusDefault,
                      verticalPadding: paddingMedium,
                      horizontalPadding: paddingMedium,
                    ),
                    const SizedBox(
                      height: spaceExtraSmall,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot your password?',
                          style: TextStyle(
                            fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .fontSize! *
                                1.3,
                            fontWeight: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .fontWeight,
                            color: Theme.of(context).colorScheme.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                Theme.of(context).colorScheme.primary,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: spaceLarge,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Theme.of(context).colorScheme.onTertiary,
                            thickness: 1,
                          ),
                        ),
                        const SizedBox(
                          width: spaceSmall,
                        ),
                        Text(
                          'or',
                          style: TextStyle(
                            fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .fontSize! *
                                1.3,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).colorScheme.onTertiary,
                            letterSpacing: 0.5,
                          ),
                        ),
                        const SizedBox(
                          width: spaceSmall,
                        ),
                        Expanded(
                          child: Divider(
                            color: Theme.of(context).colorScheme.onTertiary,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: spaceSmall,
                    ),
                    const Text(
                      "Don't have an account?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: spaceSmall,
                    ),
                    InvertedButton(
                      onPressed: () {
                        Get.toNamed(Routes.signupRoute);
                      },
                      text: "Sign Up",
                      fontSize:
                          Theme.of(context).textTheme.bodyLarge!.fontSize!,
                      borderRadius: borderRadiusDefault,
                      verticalPadding: paddingMedium,
                      horizontalPadding: paddingMedium,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
