import 'package:dio_example/data/firebase/upload_image_service.dart';
import 'package:dio_example/data/network/repository/login_repository_impl.dart';
import 'package:dio_example/data/network/repository/sign_up_repository_impl.dart';
import 'package:dio_example/data/network/sign_up/service/sign_up_service.dart';
import 'package:dio_example/domain/login_repository.dart';
import 'package:dio_example/domain/sign_up_repository.dart';
import 'package:dio_example/presentation/native/bloc/native_bloc.dart';
import 'package:get_it/get_it.dart';

import '../data/firebase/log_in_service.dart';
import '../data/firebase/sign_up_service.dart';
import '../data/network/dio/dio_client.dart';
import '../data/network/dio/dio_options.dart';
import '../data/network/login/service/login_service.dart';
import '../presentation/home/bloc/home_bloc.dart';
import '../presentation/login/bloc/log_in_bloc.dart';
import '../presentation/sign_up/bloc/sign_up_bloc.dart';

final getIt = GetIt.instance;
Future<void> init() async {
  getIt.registerLazySingleton(() => const DioOptions());
  getIt.registerLazySingleton(() => DioClient(dioOptions: getIt<DioOptions>()));
  getIt.registerLazySingleton(() =>  getIt<DioClient>().dio);

  getIt.registerLazySingleton(() => LoginService(dio: getIt<DioClient>().dio));
  getIt.registerLazySingleton(() => FirebaseLoginService());
  getIt.registerLazySingleton(() => LoginRepositoryImpl(loginService: getIt<FirebaseLoginService>()));
  getIt.registerLazySingleton<LoginRepository>(() => getIt<LoginRepositoryImpl>());

  getIt.registerLazySingleton(() => SignUpService(dio: getIt<DioClient>().dio));
  getIt.registerLazySingleton(() => FirebaseSignUpService());
  getIt.registerLazySingleton(() => SignUpRepositoryImpl(signUpService: getIt<FirebaseSignUpService>()));
  getIt.registerLazySingleton<SignUpRepository>(() => getIt<SignUpRepositoryImpl>());

  getIt.registerLazySingleton(() => FirebaseUploadImageService());
  getIt.registerFactory(() => LoginBloc(getIt<LoginRepository>()));
  getIt.registerFactory(() => SignUpBloc(getIt<SignUpRepository>()));
  getIt.registerFactory(() => HomeBloc(getIt<FirebaseUploadImageService>()));
  getIt.registerFactory(() => NativeBloc());
}