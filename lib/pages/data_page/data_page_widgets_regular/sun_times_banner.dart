import 'package:flutter/material.dart';
import 'package:weather_app/pages/data_page/data_page_widgets_regular/sun_card.dart';
import 'package:weather_icons/weather_icons.dart';

class SunTimesBanner extends StatelessWidget {
  const SunTimesBanner({
    super.key,
    required this.sunrise,
    required this.sunset,
  });

  final DateTime sunrise;
  final DateTime sunset;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SunCard(
              time: sunrise,
              icon: const BoxedIcon(WeatherIcons.sunrise),
            ),
            SunCard(
              time: sunset,
              icon: const BoxedIcon(WeatherIcons.sunset),
            ),
          ],
        ),
      ),
    );
  }
}
