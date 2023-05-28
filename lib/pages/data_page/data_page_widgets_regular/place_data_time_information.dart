import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PlaceDataTimeInformation extends StatelessWidget {
  const PlaceDataTimeInformation({
    super.key,
    required this.cityName,
    required this.date,
  });

  final String cityName;
  final DateTime date;

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cityName.capitalize(),
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${DateFormat('HH:mm').format(date)}   ${DateFormat('dd.MM.yyyy').format(date)}",
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
