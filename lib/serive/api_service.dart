import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:vehup_app/model/login/login_model.dart';

class ApiService {
  final String baseUrl = 'https://your-api-url.com/';

  Future<LoginResponse> login(LoginRequest loginRequest) async {
    final url = Uri.parse('$baseUrl/vendor-login');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode(loginRequest.toJson()),
    );

    if (response.statusCode == 200) {
      return LoginResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to login');
    }
  }
}
