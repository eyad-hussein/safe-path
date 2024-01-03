import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:safe_path/models/user.dart';
import 'package:safe_path/repositories/user_repository.dart';

class UserController extends GetxController {
  final UserRepository userRepository = UserRepository();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmationController =
      TextEditingController();
  final Uri avatarUrl = Uri.parse('');
  final int roleId = 0;

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordConfirmationController.dispose();
    super.onClose();
  }

  Future<void> register() async {
    try {
      await userRepository.register(
        nameController.text,
        emailController.text,
        passwordController.text,
        passwordController.text,
        avatarUrl,
        roleId,
      );
      // user(newUser);
    } catch (e) {
      print('Error registering user: $e');
    }
  }

  Future<void> login() async {
    try {
      await userRepository.login(
        emailController.text,
        passwordController.text,
      );
      // user(authenticatedUser);
      print(passwordController.text);
    } catch (e) {
      print(e);
    }
  }
}
