import 'package:test_weather/data/remote/weather_service.dart';
import 'package:test_weather/data/remote/weather_service_client.dart';
import 'package:test_weather/data/repository/weather_repository.dart';
import 'package:test_weather/data/response/list_forecast.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  late WeatherService _service;

  WeatherRepositoryImpl() {
    _service = WeatherServiceClient().getService();
  }

  @override
  Future<ListForecast>? getListForecast({
    required String lat,
    required String long,
    String? appId,
  }) async {
    return _service.getListForecast(lat, long);
  }
}
