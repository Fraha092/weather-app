import 'package:flutter/material.dart';
import 'package:weather_app/pages/data_page/data_page_widgets_regular/weather_data_back_button.dart';

class NotFoundContent extends StatelessWidget {
  const NotFoundContent({
    super.key,
    required this.cityname,
  });

  final String cityname;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/cloud_magnifying_glass.png',
          width: MediaQuery.of(context).size.width / 2,
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          "Unfortunately \nWe couldn't find city",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          cityname,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const WeatherDataBackButton(),
      ],
    );
  }
}
