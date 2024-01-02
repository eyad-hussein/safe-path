import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

const String baseUrl = 'http://127.0.0.1:8000/api';

class HttpRequest extends GetxController {
  Future<dynamic> get(String endpoint, {Map<String, String>? params}) async {
    final Uri uri =
        Uri.parse('$baseUrl/$endpoint').replace(queryParameters: params);

    final response = await http.get(uri);

    return _handleResponse(response);
  }

  Future<dynamic> post(String endpoint, {Map<String, dynamic>? body}) async {
    final Uri uri = Uri.parse('$baseUrl/$endpoint');

    final response = await http.post(
      uri,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(body),
    );

    return _handleResponse(response);
  }

  dynamic _handleResponse(http.Response response) {
    final int statusCode = response.statusCode;
    final String responseBody = response.body;

    if (statusCode < 200 || statusCode >= 400 || responseBody.isEmpty) {
      throw Exception('Request failed with status: $statusCode');
    }

    try {
      return jsonDecode(responseBody);
    } catch (e) {
      throw Exception('Failed to parse response JSON: $e');
    }
  }
}
