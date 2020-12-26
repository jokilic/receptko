import 'dart:convert';
import 'package:dio/dio.dart';

class Api {
  final Dio _dio = Dio();

  Future<Response<dynamic>> get(String path) async {
    try {
      final Response<dynamic> response = await _dio.get(path);
      print('[DIO] Success: $response');
      return response;
    } catch (e) {
      print('[DIO] Error: $e');
      return null;
    }
  }

  Future<Response<dynamic>> post(String path,
      {Map<String, dynamic> params}) async {
    try {
      final Response<dynamic> response =
          await _dio.post(path, data: jsonEncode(params));
      print('[DIO] Success: $response');
      return response;
    } catch (e) {
      print('[DIO] Error: $e');
      return null;
    }
  }
}
