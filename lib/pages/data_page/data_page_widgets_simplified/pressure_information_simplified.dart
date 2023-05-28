import 'package:flutter/material.dart';

class PressureInformationSimplified extends StatelessWidget {
  const PressureInformationSimplified({
    super.key,
    required this.pressure,
  });

  final int pressure;

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
                  "Pressure: $pressure hPa",
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
