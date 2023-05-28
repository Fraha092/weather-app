import 'dart:convert';
import 'package:weather_app/exceptions/network_exception.dart';
import 'package:weather_app/exceptions/not_found_exception.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  Future<WeatherModel> fetchWeatherData(String cityName) async {
    const apiKey = '532265cb6a7db2afd1ea14fc6f1200ce';
    final result = await http.get(
      Uri.parse(
       'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey',
      ),
    );

    if (result.statusCode == 404) {
      throw NotFoundException();
    } else if (result.statusCode != 200) {
      throw NetworkException();
    } else {
      return parsedJson(result.body);
    }
  }

  WeatherModel parsedJson(final response) {
    final responseJson = json.decode(response);
    return WeatherModel.fromJson(responseJson);
  }
}
