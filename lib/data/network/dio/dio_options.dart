import 'package:dio_example/data/network/constants/endpoints.dart';

class DioOptions {
  final String baseUrl;
  final int receiveTimeout;
  final int connectionTimeout;

  const DioOptions({
    this.baseUrl = Endpoints.baseUrl,
    this.receiveTimeout = Endpoints.receiveTimeout,
    this.connectionTimeout = Endpoints.connectionTimeout,
  });
}