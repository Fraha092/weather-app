class WeatherModel{
  final double temperature;
  final int pressure;
  final String description;
  final String icon;
  final DateTime date;
  final DateTime sunrise;
  final DateTime sunset;
  final int humidity;
  final double speed;
  final int visibility;

  const WeatherModel({
    required this.temperature,
    required this.pressure,
    required this.description,
    required this.icon,
    required this.date,
    required this.sunrise,
    required this.sunset,
    required this.humidity,
    required this.speed,
    required this.visibility,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    final main = json['main'];
    //final wind = json['wind'];
    final weather = json['weather'][0];
    final sys = json['sys'];

    return WeatherModel(
      temperature: double.parse((main['temp'] - 273.15).toStringAsFixed(1)),
      pressure: main['pressure'],
      description: weather['description'],
      icon: weather['icon'],
      date: DateTime.now(),
      sunrise: DateTime.fromMillisecondsSinceEpoch(sys['sunrise'] * 1000, isUtc: true).toLocal(),
      sunset: DateTime.fromMillisecondsSinceEpoch(sys['sunset'] * 1000, isUtc: true).toLocal(),
      humidity: main['humidity'],
      visibility: json['visibility'],
      speed: json['wind']['speed'].toDouble(),
      //speed: wind['speed']
       // speed: double.parse((wind['speed']).toString()),
    );
  }
}
