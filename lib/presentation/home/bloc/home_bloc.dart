import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/firebase/upload_image_service.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final FirebaseUploadImageService uploadImageService;
  HomeBloc(this.uploadImageService) : super(HomeInitial()){
    on<UploadImage>(_uploadImage);
  }

  Future<void> _uploadImage(UploadImage event, Emitter<HomeState> emit) async {
    try {
      await uploadImageService.uploadFileFromAsset("assets/images/logo.png", "logo.png");
      emit(HomeUploadFileSuccess("Image uploaded successfully!"));
    } catch (e) {
      emit(HomeUploadFileFailure("Error uploading image: $e"));
    }
  }
}
