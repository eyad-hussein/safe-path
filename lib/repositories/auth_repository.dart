import 'package:get/get.dart';
import 'package:safe_path/models/user.dart';
import 'package:safe_path/constants.dart';
import 'package:safe_path/repositories/http_request.dart';

class AuthRepository extends GetxController {
  final HttpRequest httpRequest = Get.find<HttpRequest>();

  Future<User> login(
    String email,
    String password,
  ) async {
    final response = await httpRequest.post(
      'login',
      body: {
        'email': email,
        'password': password,
      },
    );
    // Logic to add token to local storage
    return User.fromJson(response['user']);
  }

  Future<User> register(
    String name,
    String email,
    String password,
    String passwordConfirmation,
    int roleId,
  ) async {
    final response = await httpRequest.post(
      'register',
      body: {
        'name': name,
        'email': email,
        'password': password,
        'password_confirmation': passwordConfirmation,
        'role_id': roleId,
      },
    );
    // Logic to add token to local storage
    return User.fromJson(response['user']);
  }
}
