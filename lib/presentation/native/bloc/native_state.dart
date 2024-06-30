part of 'native_bloc.dart';

@immutable
sealed class NativeState {}

final class NativeInitial extends NativeState {}

final class NativeLoaded extends NativeState {
  final String batteryLevel;

  NativeLoaded(this.batteryLevel);
}
