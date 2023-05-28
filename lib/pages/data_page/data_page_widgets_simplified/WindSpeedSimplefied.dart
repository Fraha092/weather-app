import 'package:flutter/material.dart';

class WindSpeedSimplefied extends StatelessWidget {
  const WindSpeedSimplefied({
    super.key,
    required this.speed,
  });

  final double speed;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:20,top: 5,right: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                "Wind Speed: ${speed.toString()} Km/h",
                //textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
