part of 'weather_bloc.dart';

abstract class WeatherEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetWeatherData extends WeatherEvent{
  final String cityName;

  GetWeatherData(this.cityName);


  @override
  List<Object> get props => [cityName];
}

class ResetWeatherData extends WeatherEvent{}
