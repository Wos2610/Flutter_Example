part of 'native_bloc.dart';

@immutable
sealed class NativeEvent {}

class NativeViewButtonPressed extends NativeEvent {
  final String batteryLevel;

  NativeViewButtonPressed(this.batteryLevel);
}

