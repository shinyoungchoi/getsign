import 'package:json_annotation/json_annotation.dart';
part 'login_resp.g.dart';

@JsonSerializable()
class LoginRespModal {
  String? token;

  LoginRespModal({this.token});

  factory LoginRespModal.fromJson(Map<String, dynamic> json) =>
      _$LoginRespModalFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRespModalToJson(this);
}
