import 'package:dio/dio.dart';

import '../../model/login/failure_login_response.dart';
import '../../model/login/login_request.dart';
import '../../model/login/success_login_response.dart';

class LoginService{
  final Dio _dio;

  LoginService({required Dio dio}) : _dio = dio;


  Future<dynamic> postLogin(LoginRequest loginRequest) async {
    try {
      final Response response = await _dio.post(
        '/api/auth/login',
        data: loginRequest.toJson(),
      );
      if(response.statusCode != 200){
        return FailureLoginResponse.fromJson(response.data);
      }
      else{
        return SuccessLoginResponse.fromJson(response.data);
      }
    } on DioException catch (e) {
      // if(e.response != null){
      //   return FailureLoginResponse.fromJson(e.response?.data);
      // }
      // else{
      //   throw e;
      // }
      throw e;
    }
  }

}