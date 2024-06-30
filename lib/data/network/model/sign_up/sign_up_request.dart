import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_request.freezed.dart';
part 'sign_up_request.g.dart';

@freezed
@JsonSerializable()
class SignUpRequest with _$SignUpRequest {
  const factory SignUpRequest({
    required String username,
    required String password,
    required String fullName,
    required DateTime dateOfBirth,
    required String phoneNumber,
    required String email,
    required String avatar,
  }) = _SignUpRequest;

  factory SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);
}