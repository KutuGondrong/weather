import 'package:equatable/equatable.dart';
import 'package:test_weather/data/response/forecast.dart';
import 'package:test_weather/data/response/list_forecast.dart';

abstract class HomePageState extends Equatable {
  const HomePageState();

  @override
  List<Object> get props => [];
}

class InitialHomePageState extends HomePageState {}

class LoadingHomePageState extends HomePageState {}

class ErrorHomePageState extends HomePageState {
  final String errorMessage;

  const ErrorHomePageState({this.errorMessage = "Unknown Error"});

  @override
  String toString() => 'Error : $errorMessage';
}

class SuccessHomePageState extends HomePageState {
  final List<Forecast> listForecast;

  const SuccessHomePageState(this.listForecast);

  @override
  List<Object> get props => [listForecast];
}
