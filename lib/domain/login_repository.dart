import '../data/network/model/login/login_request.dart';

abstract class LoginRepository {
  Future<dynamic> login(LoginRequest loginRequest);
}