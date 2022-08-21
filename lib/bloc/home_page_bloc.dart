import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_weather/bloc/home_page_event.dart';
import 'package:test_weather/bloc/home_page_state.dart';
import 'package:test_weather/data/repository/weather_repository.dart';
import 'package:test_weather/data/response/list_forecast.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final WeatherRepository repository;

  HomePageBloc({required this.repository}) : super(InitialHomePageState());

  @override
  Stream<HomePageState> mapEventToState(HomePageEvent event) async* {
    if (event is SearchByLatLongEvent) {
      try {
        yield LoadingHomePageState();

        ListForecast response =
            await repository.getListForecast(lat: event.lat, long: event.long)!;

        yield SuccessHomePageState(response.list ?? []);
      } catch (e) {
        yield ErrorHomePageState(errorMessage: e.toString());
      }
    }
  }
}
