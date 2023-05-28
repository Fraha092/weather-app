import 'package:flutter/material.dart';
import 'package:flutter_gradients_reborn/flutter_gradients_reborn.dart';
import 'package:weather_app/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app/pages/data_page/data_page_widgets_simplified/HumiditySimplified.dart';
import 'package:weather_app/pages/data_page/data_page_widgets_simplified/VisibilitySimplified.dart';
import 'package:weather_app/pages/data_page/data_page_widgets_simplified/WindSpeedSimplefied.dart';
import 'package:weather_app/pages/data_page/data_page_widgets_simplified/place_data_time_information_simplified.dart';
import 'package:weather_app/pages/data_page/data_page_widgets_simplified/pressure_information_simplified.dart';
import 'package:weather_app/pages/data_page/data_page_widgets_simplified/sun_time_description.dart';
import 'package:weather_app/pages/data_page/data_page_widgets_simplified/temperature_simplified.dart';
import 'package:weather_app/pages/data_page/data_page_widgets_simplified/weather_description_simplified.dart';

class DataPageContentSimplified extends StatelessWidget {
  const DataPageContentSimplified({
    super.key,
    required this.cityName,
    required this.state,
  });

  final String cityName;
  final SearchedState state;

  double celsiusToFahrenheit(double celsius) {
    return (celsius * 9 / 5) + 32;
  }

  @override
  Widget build(BuildContext context) {
    // final temperatureCelsius = state.weatherModel.temperature - 273.15;
    // final temperatureFahrenheit = celsiusToFahrenheit(temperatureCelsius);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            PlaceDataTimeInformationSimplified(
              cityName: cityName,
              date: state.weatherModel.date,
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: FlutterGradients.flyHigh(),
              ),
              child: Image.network(
                'http://openweathermap.org/img/wn/${state.weatherModel.icon}@4x.png',
                fit: BoxFit.cover,
                height: 200,
              ),
            ),
            TemperatureSimplify(
              temperature: state.weatherModel.temperature,
            ),
            const SizedBox(
              height: 20,
            ),
            WeatherDescriptionSimplified(
              description: state.weatherModel.description,
            ),
            const SizedBox(
              height: 20,
            ),
            PressureInformationSimplified(
              pressure: state.weatherModel.pressure,
            ),
            WindSpeedSimplefied(speed: state.weatherModel.speed),
            const SizedBox(
              height: 40,
            ),
            HumiditySimplified(
                humidity: state.weatherModel.humidity
            ),
            VisibilitySimplified(
                visibility: state.weatherModel.visibility
            ),
            const SizedBox(
              height: 30,
            ),
            SunTimeDescription(
              time: state.weatherModel.sunrise,
              prefix: "Sunrise: ",
            ),
            SunTimeDescription(
              time: state.weatherModel.sunset,
              prefix: "Sunset: ",
            ),



          ],
        ),
      ),
    );
  }

}
