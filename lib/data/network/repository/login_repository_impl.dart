import 'package:firebase_core/firebase_core.dart';

import '../../../domain/login_repository.dart';
import '../../firebase/log_in_service.dart';
import '../login/service/login_service.dart';
import '../model/login/failure_login_response.dart';
import '../model/login/login_request.dart';
import '../model/login/status.dart';
import '../model/login/success_login_response.dart';

class LoginRepositoryImpl implements LoginRepository {
  final FirebaseLoginService loginService;
  LoginRepositoryImpl({required this.loginService});

  // @override
  // Future<dynamic> login(LoginRequest loginRequest) async {
  //   try{
  //     final response = await loginService.postLogin(loginRequest);
  //     if(response is SuccessLoginResponse){
  //       print("SuccessLoginResponse");
  //       return response;
  //     }
  //     else if(response is FailureLoginResponse){
  //       print("FailureLoginResponse: ${response.status.message}");
  //       throw response;
  //     }
  //     else{
  //       throw Exception('Unexpected response type: $response');
  //     }
  //   } on Exception catch(e){
  //     throw e;
  //   }
  // }

  @override
  Future<dynamic> login(LoginRequest loginRequest) async {
    try {
      final response = await loginService.logIn(loginRequest.email, loginRequest.password);
      if (response != null) {
        print("Success Login Response");
        return SuccessLoginResponse(
            email: response.email!!,
        );
      } else {
        print("Failure Login Response");
        return const FailureLoginResponse(
          status: Status(
            message: 'No user found for that email.',
            code: 'user-not-found',
          )
        );
      }
    } on FirebaseException catch (e) {
      print(e);
      return FailureLoginResponse(
        status: Status(
          message: e.message ?? 'Unknown error',
          code: e.code,
        ),
      );
    }
  }
}
