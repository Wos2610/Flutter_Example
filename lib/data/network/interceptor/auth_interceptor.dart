import 'package:dio/dio.dart';
import 'package:dio_example/utils/network/dio_error_util.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
    final errorDescription = DioErrorUtil.handleError(err);
    print(errorDescription);
  }
}