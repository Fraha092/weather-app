import 'package:flutter/material.dart';
import 'package:weather_app/pages/data_page/data_page_widgets_regular/place_data_time_information.dart';

class HumiditySimplified extends StatelessWidget {
  const HumiditySimplified({
    super.key,
    required this.humidity,
  });

  final int humidity;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20,top: 5,right: 20),
        child: Row(
          children: [
            Expanded(
              child: Text(
                "Humidity: ${humidity.toString()}%",
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
