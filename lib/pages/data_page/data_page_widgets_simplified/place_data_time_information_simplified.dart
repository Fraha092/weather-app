import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PlaceDataTimeInformationSimplified extends StatelessWidget {
  const PlaceDataTimeInformationSimplified({
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: AutoSizeText(
              cityName.capitalize(),
              style: const TextStyle(
                fontSize:120,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
            ),
          ),
          Text(
            DateFormat('HH:mm').format(date),
            style: const TextStyle(fontSize: 40),
          ),
          Text(
            DateFormat('dd.MM.yyyy').format(date),
            style: const TextStyle(fontSize: 40),
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
