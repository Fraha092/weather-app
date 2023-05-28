import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app/exceptions/network_exception.dart';
import 'package:weather_app/exceptions/not_found_exception.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

part 'weather_event.dart';

part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(NotSearchingState()) {
    final WeatherService weatherService = WeatherService();

    on<GetWeatherData>((event, emit) async {
      emit(SearchingState());

      try {
        final weather = await weatherService.fetchWeatherData(event.cityName);
        emit(SearchedState(weather));
      } on NetworkException {
        emit(const ErrorState("Network error occurred."));
      } on NotFoundException {
        emit(NotFoundState());
      }
    });

    on<ResetWeatherData>((event, emit) {
      emit(NotSearchingState());
    });
  }
}
