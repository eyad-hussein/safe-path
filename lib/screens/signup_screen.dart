import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_path/constants.dart';
import 'package:safe_path/controllers/register_controller.dart';
import 'package:safe_path/widget/buttons/inverted_button_widget.dart';
import 'package:safe_path/widget/buttons/primary_button_widget.dart';
import 'package:safe_path/widget/form/custom_form_field_widget.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final RegisterController registerController = Get.find<RegisterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.all(spaceSmall),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: spaceSmall),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: spaceLarge),
                      Text(
                        'Create Account',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .fontSize!,
                          fontWeight: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .fontWeight,
                        ),
                      ),
                      const SizedBox(height: spaceMedium),
                      CustomFormField(
                        type: CustomFormFieldType.name,
                        controller: registerController.nameController,
                        hintText: 'Name',
                      ),
                      const SizedBox(height: spaceSmall),
                      CustomFormField(
                        type: CustomFormFieldType.phone,
                        controller: registerController.phoneController,
                        hintText: 'Phone Number',
                      ),
                      const SizedBox(height: spaceSmall),
                      CustomFormField(
                        type: CustomFormFieldType.email,
                        controller: registerController.emailController,
                        hintText: 'E-mail',
                      ),
                      const SizedBox(height: spaceSmall),
                      CustomFormField(
                        type: CustomFormFieldType.password,
                        controller: registerController.passwordController,
                        hintText: 'Password',
                      ),
                      const SizedBox(height: spaceSmall),
                      CustomFormField(
                        type: CustomFormFieldType.password,
                        controller:
                            registerController.passwordConfirmationController,
                        hintText: 'Confirm Password',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: spaceLarge,
                  ),
                  const SizedBox(
                    height: spaceExtraLarge * 4,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      PrimaryButton(
                        onPressed: () {
                          registerController.register();
                        },
                        text: "Create Account",
                        fontSize:
                            Theme.of(context).textTheme.bodyLarge!.fontSize!,
                        borderRadius: borderRadiusDefault,
                        verticalPadding: paddingMedium,
                        horizontalPadding: paddingMedium,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: paddingSmall),
                        child: Text(
                          'Aleady have an account?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(black),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      InvertedButton(
                        onPressed: () {
                          Get.back();
                        },
                        text: 'Sign In',
                        fontSize:
                            Theme.of(context).textTheme.bodyLarge!.fontSize!,
                        borderRadius: borderRadiusDefault,
                        verticalPadding: paddingMedium,
                        horizontalPadding: paddingMedium,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
