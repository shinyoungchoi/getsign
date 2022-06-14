// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponseModel _$RegisterResponseModelFromJson(
        Map<String, dynamic> json) =>
    RegisterResponseModel(
      token: json['token'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$RegisterResponseModelToJson(
        RegisterResponseModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'id': instance.id,
    };
