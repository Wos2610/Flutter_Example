part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

final class UploadImage extends HomeEvent {
  UploadImage();
}

