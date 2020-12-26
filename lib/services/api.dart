import 'dart:convert';
import 'package:dio/dio.dart';

class Api {
  final String baseUrl = 'https://api.spoonacular.com';
  final String apiKey = '651a5342989c4dfbab4d1816234e6ba1';

  final Dio _dio = Dio();

  Future<Response<dynamic>> get(String path) async {
    try {
      final Response<dynamic> response =
          await _dio.get('$baseUrl/${path}apiKey=$apiKey');
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
