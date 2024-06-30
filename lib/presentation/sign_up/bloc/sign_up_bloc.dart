import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio_example/domain/login_repository.dart';
import 'package:dio_example/domain/sign_up_repository.dart';
import 'package:meta/meta.dart';

import '../../../data/network/model/sign_up/sign_up_request.dart';
import '../../../data/network/model/sign_up/user.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpRepository signUpRepository;

  SignUpBloc(this.signUpRepository) : super(SignUpLoaded("", "", "")) {
    on<UsernameChanged>(_onUsernameChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<EmailChanged>(_onEmailChanged);
    on<SignUpButtonPressed>(_signUp);
  }

  Future<void> _onUsernameChanged(UsernameChanged event, Emitter<SignUpState> emit) async {
    if(state is SignUpLoaded){
      final loadedState = state as SignUpLoaded;
      emit(SignUpLoaded(event.username, loadedState.password, loadedState.email));
    }
    else{
      print("Invalid state in username changed + ${state.toString()}");
    }
  }

  Future<void> _onPasswordChanged(PasswordChanged event, Emitter<SignUpState> emit) async {
    if(state is SignUpLoaded){
      final loadedState = state as SignUpLoaded;
      print("Password changed");
      emit(SignUpLoaded(loadedState.username, event.password, loadedState.email));
    }
    else{
      print("Invalid state in password changed + ${state.toString()}");
    }
  }

  Future<void> _onEmailChanged(EmailChanged event, Emitter<SignUpState> emit) async {
    if(state is SignUpLoaded){
      final loadedState = state as SignUpLoaded;
      print("Email changed");
      emit(SignUpLoaded(loadedState.username, loadedState.password, event.email));
    }
    else{
      print("Invalid state in email changed + ${state.toString()}");
    }
  }

  FutureOr _signUp(SignUpButtonPressed event, Emitter<SignUpState> emit) async {
    if(state is SignUpLoaded){
      final loadedState = state as SignUpLoaded;
      if(loadedState.username.isEmpty || loadedState.password.isEmpty || loadedState.email.isEmpty){
        emit(SignUpFailure("Username, password, email cannot be empty"));
      }
      else{
        try{
          final signUpRequest = SignUpRequest(
            username: loadedState.username,
            password: loadedState.password,
            fullName: "string",
            dateOfBirth: DateTime.now(),
            phoneNumber: "string",
            email: loadedState.email,
            avatar: "string",
          );

          print("Sign up request: $signUpRequest");
          final signUpResponse = await signUpRepository.signUp(signUpRequest);
          final user = User(
            userId: signUpResponse.userId,
            username: signUpResponse.email,
            fullName: signUpResponse.fullName,
            dateOfBirth: signUpResponse.dateOfBirth,
            phoneNumber: signUpResponse.phoneNumber,
            email: signUpResponse.email,
            avatar: signUpResponse.avatar,
          );
          emit(SignUpSuccess(user));
        } catch (e) {
          emit(SignUpFailure(e.toString()));
        }
      }
    }
    else{
      print("Invalid state in sign up + ${state.toString()}");
    }
  }
}
