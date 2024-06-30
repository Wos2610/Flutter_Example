import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'native_event.dart';
part 'native_state.dart';

class NativeBloc extends Bloc<NativeEvent, NativeState> {
  NativeBloc() : super(NativeLoaded("No data")) {
    on<NativeViewButtonPressed>(_onNativeViewButtonPressed);
  }

  Future<void> _onNativeViewButtonPressed(NativeViewButtonPressed event, Emitter<NativeState> emit) async {
    emit(NativeLoaded(event.batteryLevel));
  }
}
