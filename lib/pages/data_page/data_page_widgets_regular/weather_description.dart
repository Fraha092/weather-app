import 'package:flutter/material.dart';
import 'package:weather_app/pages/data_page/data_page_widgets_regular/place_data_time_information.dart';

class WeatherDescription extends StatelessWidget {
  const WeatherDescription({
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
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              description.capitalize(),
              style: const TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
