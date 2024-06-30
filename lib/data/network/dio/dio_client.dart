import 'package:dio/dio.dart';
import 'package:dio_example/data/network/interceptor/auth_interceptor.dart';

import 'dio_options.dart';

class DioClient {
  final DioOptions dioOptions;
  final Dio _dio;

  DioClient({required this.dioOptions})
      : _dio = Dio()
          ..options.baseUrl = dioOptions.baseUrl
          ..options.connectTimeout =
              Duration(milliseconds: dioOptions.connectionTimeout)
          ..options.receiveTimeout =
              Duration(milliseconds: dioOptions.receiveTimeout)
          ..interceptors.add(AuthInterceptor());

  Dio get dio => _dio;
}
