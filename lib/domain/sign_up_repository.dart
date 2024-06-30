import 'package:dio_example/data/network/model/sign_up/sign_up_request.dart';

abstract class SignUpRepository {
  Future<dynamic> signUp(SignUpRequest signUpRequest);
}