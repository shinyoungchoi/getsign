import 'package:flutter_app3/model/login_request.dart';
import 'package:flutter_app3/model/register_request.dart';
import 'package:get/get_connect.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';

class LoginService extends GetConnect {
  final String loginUrl = 'https://reqres.in/api/login';
  final String registeUrl = 'https://reqres.in/api/register';

  Future<LoginRequestModel?> fetchLogin(LoginRequestModel model) async {
    final response = await post(loginUrl, model.toJson());

    if (response.statusCode == HttpStatus.ok) {
      return LoginRequestModel.fromJson(response.body);
    } else {
      return null;
    }
  }

  Future<RegisterRequestModel?> fetchRegister(
      RegisterRequestModel model) async {
    final response = await post(registeUrl, model.toJson());
    if (response.statusCode == HttpStatus.ok) {
      return RegisterRequestModel.fromJson(response.body);
    } else {
      return null;
    }
  }
}
