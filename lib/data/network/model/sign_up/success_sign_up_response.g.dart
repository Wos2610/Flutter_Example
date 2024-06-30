// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success_sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************
Map<String, dynamic> _$SuccessSignUpResponseToJson(
        SuccessSignUpResponse instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'fullName': instance.fullName,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'avatar': instance.avatar,
    };

_$SuccessSignUpResponseImpl _$$SuccessSignUpResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SuccessSignUpResponseImpl(
      userId: json['userId'] as String,
      username: json['username'] as String,
      fullName: json['fullName'] as String,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$$SuccessSignUpResponseImplToJson(
        _$SuccessSignUpResponseImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'fullName': instance.fullName,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'avatar': instance.avatar,
    };
