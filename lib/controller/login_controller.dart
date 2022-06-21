import 'package:flutter/material.dart';
import 'package:flutter_app3/auth/auth_manager.dart';
import 'package:flutter_app3/model/login_request.dart';
import 'package:flutter_app3/model/register_request.dart';
import 'package:flutter_app3/service/login_service.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late final LoginService _loginService;
  late final AuthMaanger _authmanager;

  @override
  void onInit() {
    super.onInit();
    _loginService = Get.put(LoginService());
    _authmanager = Get.find();
  }

  Future<void> loginUser(String email, String password) async {
    final response = await _loginService
        .fetchLogin(LoginRequestModel(email: email, password: password));
    if (response != null) {
      _authmanager.login(response.token);
    } else {
      Get.defaultDialog(
        middleText: "사용자를 찾을수 없습니다.",
        textConfirm: "Ok",
        confirmTextColor: Colors.white,
        onConfirm: () {
          Get.back();
        },
      );
    }
  }

  Future<void> registerUser(String email, String password) async {
    final response = await _loginService
        .fetchRegister(RegisterRequestModel(email: email, password: password));

    if (response != null) {
      /// Set isLogin to true
      _authmanager.login(response.token);
    } else {
      /// Show user a dialog about the error response
      Get.defaultDialog(
          middleText: '가입도중 오류가 발생하였습니다.',
          textConfirm: 'OK',
          confirmTextColor: Colors.white,
          onConfirm: () {
            Get.back();
          });
    }
  }
}
