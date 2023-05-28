import 'package:flutter/material.dart';

class PressureInformation extends StatelessWidget {
  const PressureInformation({
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
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Pressure: $pressure hPa",
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
