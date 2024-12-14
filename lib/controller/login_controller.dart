import 'package:get/get.dart';
import 'package:vehup_app/model/login/login_model.dart';
import 'package:vehup_app/serive/api_service.dart';


class LoginController extends GetxController {
  var isLoading = false.obs;
  var errorMessage = ''.obs;
  var token = ''.obs;

  final ApiService apiService;

  LoginController({required this.apiService});

  Future<void> login(String email, String password) async {
    isLoading.value = true;
    try {
      LoginRequest loginRequest = LoginRequest(email: email, password: password);
      LoginResponse response = await apiService.login(loginRequest);
      token.value = response.token;
      errorMessage.value = response.message;
    } catch (e) {
      errorMessage.value = 'Login failed: ${e.toString()}';
    } finally {
      isLoading.value = false;
    }
  }
}
