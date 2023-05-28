import 'package:flutter/material.dart';

class TemperatureSimplify extends StatelessWidget {
  const TemperatureSimplify({
    super.key,
    required this.temperature,
  });

  final double temperature;

  double celsiusToFahrenheit(double celsius) {
    return (celsius * 9 / 5) + 32;
  }
  @override
  Widget build(BuildContext context) {
    final temperatureCelsius = temperature - 273.15;
    final temperatureFahrenheit = celsiusToFahrenheit(temperatureCelsius);

    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    "$temperature°C",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),Text(
                    "${temperature * 9 / 5 + 32}°F",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
