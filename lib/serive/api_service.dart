// import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<ApiResponse> login(String email, String password) async {
    try {
      // Send a request to the server to verify the email and password
      var response = await http.post(
        Uri.parse("https://test.vehup.com/api/vendor-login"), // Replace with your API URL
        body: {
          'email': email,
          'password': password,
        },
      );
      print(response.statusCode);

      if (response.statusCode == 200) {
        // Assuming the API returns a successful response
        return ApiResponse(true); // Your successful response object
      } else {
        return ApiResponse(false); // Handle unsuccessful login
      }
    } catch (e) {
      // Handle errors, such as network failure
      return ApiResponse(false, error: e.toString());
    }
  }
}

class ApiResponse {
  final bool isSuccessful;
  final String? error;

  ApiResponse(this.isSuccessful, {this.error});
}
