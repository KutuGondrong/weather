import 'package:equatable/equatable.dart';

abstract class HomePageEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SearchByLatLongEvent extends HomePageEvent {
  final String lat;
  final String long;

  SearchByLatLongEvent(
      [this.lat = '-6.175115064391812', this.long = '106.82708842419382']);

  @override
  List<Object> get props => [lat, long];
}
