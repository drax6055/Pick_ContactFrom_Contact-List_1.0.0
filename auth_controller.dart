import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../commen_items/sharePrafrence.dart';
import '../../network/dio.dart';
import '../../network/model/login_model.dart';
import '../../network/network_const.dart';
import '../../route/app_route.dart';

class AuthController extends GetxController {
  final SharedPreferenceManager _prefs = SharedPreferenceManager();

  var emailController = TextEditingController();
  var passController = TextEditingController();
  var showPass = false.obs;

  void toggleShowPass() {
    showPass.value = !showPass.value;
  }

  Future onLoginPress() async {
    final dioClient = DioClient();

    Map<String, dynamic> loginData = {
      'email': 'smitthakkar440@gmail.com',
      'password': 'Smit@0010'
      // 'email': emailController.text,
      // 'password': passController.text,
    };

    try {
      Login loginResponse = await dioClient.postData<Login>(
        '${Apis.baseUrl}${Endpoints.login}',
        loginData,
            (json) => Login.fromJson(json),
      );

      await _prefs.setUser(loginResponse);
      await _prefs.saveAccessToken(loginResponse.usertype!);

      if (loginResponse.usertype == 'employee') {
        Get.offNamed(Routes.userMainScreen);
      } else if (loginResponse.usertype == 'admin') {
        Get.offNamed(Routes.adminMainScreen);
      } else {
        Get.snackbar('Error', 'Unknown user type.');
      }

    } catch (e) {
      print(e);
      Get.snackbar('Login Error', 'An error occurred during login.');
    }
  }
}
