import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_path/repositories/auth_repository.dart';

class RegisterController extends GetxController {
  final AuthRepository _authRepository = Get.find<AuthRepository>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmationController =
      TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final int roleId = 0;

  final RxBool isLoading = false.obs;

  Future<void> register() async {
    isLoading.value = true;
    try {
      await _authRepository.register(
        nameController.text,
        emailController.text,
        passwordController.text,
        passwordConfirmationController.text,
        roleId,
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
