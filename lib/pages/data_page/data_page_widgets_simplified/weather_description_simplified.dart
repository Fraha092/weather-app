import 'package:flutter/material.dart';
import 'package:weather_app/pages/data_page/data_page_widgets_regular/place_data_time_information.dart';

class WeatherDescriptionSimplified extends StatelessWidget {
  const WeatherDescriptionSimplified({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Expanded(
              child: FittedBox(
                child: Text(
                  description.capitalize(),
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
