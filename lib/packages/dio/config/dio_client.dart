import 'package:dio/dio.dart';

class DioClient {
  late Dio _dio;

  DioClient() {
    final optios = BaseOptions(
      baseUrl: "https://reqres.in/",
      connectTimeout: const Duration(milliseconds: 15000),
      sendTimeout: const Duration(milliseconds: 15000),
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
    );

    _dio = Dio(optios);

    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        responseHeader: true,
        requestHeader: true,
        responseBody: true,
        requestBody: true,
      ),
    );
  }

  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    final Response response = await _dio.get(
      url,
      queryParameters: queryParameters,
      options: options,
    );

    return response;
  }

  Future<Response> post(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    final Response response = await _dio.post(
      url,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );

    return response;
  }
}
