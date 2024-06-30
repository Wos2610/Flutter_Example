import 'package:dio/dio.dart';
import 'package:dio_example/data/network/model/sign_up/failure_sign_up_response.dart';
import 'package:dio_example/data/network/model/sign_up/sign_up_request.dart';
import 'package:dio_example/data/network/model/sign_up/success_sign_up_response.dart';

class SignUpService{
  final Dio _dio;

  SignUpService({required Dio dio}) : _dio = dio;


  Future<dynamic> postSignUp(SignUpRequest signUpRequest) async {
    try {
      final Response response = await _dio.post(
        '/api/auth/register',
        data: signUpRequest.toJson(),
      );
      if(response.statusCode != 200){
        print("Service: Failure SignUp Response");
        return FailureSignUpResponse.fromJson(response.data);
      }
      else{
        print("Service: Failure SignUp Response");
        return SuccessSignUpResponse.fromJson(response.data);
      }
    } catch (e) {
      throw e;
    }
  }

}