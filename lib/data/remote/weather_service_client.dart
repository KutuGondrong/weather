import 'package:dio/dio.dart';
import 'package:test_weather/data/remote/weather_service.dart';

class WeatherServiceClient {
  late Dio _dio;
  late WeatherService _service;

  WeatherServiceClient() {
    _dio = Dio();
    _dio.interceptors
        .add(LogInterceptor(requestBody: true, responseBody: true));
    _dio.options.queryParameters = {
      'appid': '5db96f0f05f01dbd8fbd804104964462'
    };
    _service = WeatherService(_dio);
  }

  WeatherService getService() {
    return _service;
  }
}
