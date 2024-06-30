import 'package:freezed_annotation/freezed_annotation.dart';
part 'success_login_response.freezed.dart';
part 'success_login_response.g.dart';

@freezed
class SuccessLoginResponse with _$SuccessLoginResponse {
  const factory SuccessLoginResponse({
    required String email,
  }) = _SuccessLoginResponse;

  factory SuccessLoginResponse.fromJson(Map<String, dynamic> json) => _$SuccessLoginResponseFromJson(json);
}