part of 'weather_bloc.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class NotSearchingState extends WeatherState {}

class SearchingState extends WeatherState {}

class SearchedState extends WeatherState {
  final WeatherModel weatherModel;

  const SearchedState(this.weatherModel);

  @override
  List<Object> get props => [weatherModel];
}

class ErrorState extends WeatherState{
  final String errorMessage;

  const ErrorState(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}

class NotFoundState extends WeatherState{}
