import 'package:flutter_widgets/packages/dio/config/dio_client.dart';

import 'package:dio/dio.dart' show DioError;

import 'config/dio_exception.dart';

class Repository {
  final DioClient _dioClient;

  Repository() : _dioClient = DioClient();

  Future<String> getUser() async {
    try {
      //error 404 to try DioExceptions
      // final response = await _dioClient.get("api/users/23");

      final response = await _dioClient.get("api/users/2");

      return response.data.toString();
    } on DioError catch (e) {
      // throw DioExceptions.fromDioError(e).toString();
      return DioExceptions.fromDioError(e).toString();
    }
  }

  Future<String> postUser() async {
    try {
      // error 400 to try DioExceptions
      // final response = await _dioClient.post(
      //   "api/register",
      //   data: {"email": "sydney@fife"},
      // );

      final response = await _dioClient.post(
        "api/users",
        data: {
          "name": "Maik",
          "job": "Developer",
        },
      );

      return response.data.toString();
    } on DioError catch (e) {
      // throw DioExceptions.fromDioError(e).toString();
      return DioExceptions.fromDioError(e).toString();
    }
  }
}
