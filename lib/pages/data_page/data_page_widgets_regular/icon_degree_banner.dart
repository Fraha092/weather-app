import 'package:flutter/material.dart';
import 'package:flutter_gradients_reborn/flutter_gradients_reborn.dart';

class IconDegreeBanner extends StatelessWidget {
  const IconDegreeBanner({
    super.key,
    required this.icon,
    required this.temperature,
  });

  final String icon;
  final double temperature;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: FlutterGradients.flyHigh(),
                ),
                child: Image.network(
                  'http://openweathermap.org/img/wn/$icon@4x.png',
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
              flex: 4,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  "$temperature°C",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
