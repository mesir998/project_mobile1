import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  final String baseUrl;

  ApiService(this.baseUrl);

  Future<http.Response> post(String endpoint, Map<String, dynamic> data) async {
    final response = await http.post(
      Uri.parse('$baseUrl/$endpoint'),
      body: jsonEncode(data),
      headers: {'Content-Type': 'application/json'},
    );
    return response;
  }


}
// class ApiException implements Exception {
//   final String message;
//   final int? statusCode;
//
//   ApiException(this.message, this.statusCode);
// }

class AuthApi {
  static const String apiUrl = 'https://ee3d-180-244-162-116.ngrok-free.app/api/login';

  static Future<String> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        body: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final String token = data['token'];

        // Simpan token ke penyimpanan lokal
        await _saveToken(token);

        return token;
      } else {
        throw Exception('Failed to authenticate. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error connecting to the API: $e');
    }
  }

  static Future<void> _saveToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user_token', token);
  }
}