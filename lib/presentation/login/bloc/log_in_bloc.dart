import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio_example/domain/login_repository.dart';
import 'package:meta/meta.dart';

import '../../../data/native/native_view.dart';
import '../../../data/network/model/login/login_request.dart';
import '../../../data/network/model/login/success_login_response.dart';
import '../../../data/network/repository/login_repository_impl.dart';

part 'log_in_event.dart';
part 'log_in_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository loginRepository;
  String username = "";
  String password = "";

  LoginBloc(this.loginRepository) : super(LoginLoaded("", "")) {
    on<LoginButtonPressed>(_login);
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
  }

  Future<void> _onEmailChanged(EmailChanged event, Emitter<LoginState> emit) async {
    username = event.email;
    emit(LoginLoaded(username, password));
  }

  Future<void> _onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) async {
    password = event.password;
    emit(LoginLoaded(username, password));
  }

  Future<void> _login(LoginButtonPressed event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    try {
      final loginRequest = LoginRequest(email: username, password: password);
      final loginResponse = await loginRepository.login(loginRequest);
      emit(LoginSuccess(loginResponse));
    } catch (e) {
      emit(LoginFailure(e.toString()));
    }
  }

}
