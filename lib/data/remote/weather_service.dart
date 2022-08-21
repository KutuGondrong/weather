import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_weather/data/response/list_forecast.dart';

part 'weather_service.g.dart';

@RestApi(baseUrl: "https://api.openweathermap.org/data/2.5")
abstract class WeatherService {
  factory WeatherService(Dio dio, {String baseUrl}) = _WeatherService;

  @GET("/forecast")
  Future<ListForecast> getListForecast(
    @Query("lat") String lat,
    @Query("lon") String lon,
  );
}
