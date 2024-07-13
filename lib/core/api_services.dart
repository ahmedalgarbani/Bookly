import 'package:dio/dio.dart';

class ApiServices {
  final _baseUrl = '';
  final Dio _dio;

  ApiServices(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
