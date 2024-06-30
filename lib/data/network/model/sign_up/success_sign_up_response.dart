import 'package:dio_example/data/network/model/sign_up/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'success_sign_up_response.freezed.dart';
part 'success_sign_up_response.g.dart';

@freezed
@JsonSerializable()
class SuccessSignUpResponse with _$SuccessSignUpResponse {
  const factory SuccessSignUpResponse({
    required String userId,
    required String username,
    required String fullName,
    required DateTime dateOfBirth,
    required String phoneNumber,
    required String email,
    required String avatar,
  }) = _SuccessSignUpResponse;

  factory SuccessSignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SuccessSignUpResponseFromJson(json);
}