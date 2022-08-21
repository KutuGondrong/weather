import 'package:test_weather/data/response/list_forecast.dart';

abstract class WeatherRepository {
  Future<ListForecast>? getListForecast({
    required String lat,
    required String long,
  });
}
