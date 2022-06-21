import 'package:flutter_app3/model/login_request.dart';
import 'package:flutter_app3/model/login_resp.dart';
import 'package:flutter_app3/model/register_request.dart';
import 'package:flutter_app3/model/register_resp.dart';
import 'package:get/get_connect.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';

class LoginService extends GetConnect {
  final String loginUrl = 'https://reqres.in/api/login';
  final String registeUrl = 'https://reqres.in/api/register';

  Future<LoginRespModal?> fetchLogin(LoginRequestModel model) async {
    final response = await post(loginUrl, model.toJson());

    if (response.statusCode == HttpStatus.ok) {
      return LoginRespModal.fromJson(response.body);
    } else {
      return null;
    }
  }

  Future<RegisterResponseModel?> fetchRegister(
      RegisterRequestModel model) async {
    final response = await post(registeUrl, model.toJson());
    if (response.statusCode == HttpStatus.ok) {
      return RegisterResponseModel.fromJson(response.body);
    } else {
      return null;
    }
  }
}
