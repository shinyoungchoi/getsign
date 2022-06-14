import 'package:json_annotation/json_annotation.dart';
part 'register_resp.g.dart';

@JsonSerializable()
class RegisterResponseModel {
  String? token;
  int? id;

  RegisterResponseModel({this.token, this.id});

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterResponseModelToJson(this);
}
