import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_path/repositories/auth_repository.dart';

class LoginController extends GetxController {
  final AuthRepository _authRepository = Get.find<AuthRepository>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final RxBool isLoading = false.obs;

  Future<void> login() async {
    isLoading.value = true;
    try {
      await _authRepository.login(
        emailController.text,
        passwordController.text,
      );
      // Get.offAllNamed('/parent-or-child');
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }
}
