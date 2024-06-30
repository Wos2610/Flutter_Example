part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

class HomeInitial extends HomeState {}

class HomeUploadFileSuccess extends HomeState {
  final String message;

  HomeUploadFileSuccess(this.message);
}

class HomeUploadFileFailure extends HomeState {
  final String message;

  HomeUploadFileFailure(this.message);
}
