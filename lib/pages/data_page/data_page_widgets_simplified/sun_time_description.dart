import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SunTimeDescription extends StatelessWidget {
  const SunTimeDescription({
    super.key,
    required this.time,
    required this.prefix,
  });

  final DateTime time;
  final String prefix;

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
              child: Text(
                "$prefix${DateFormat('HH:mm').format(time)}",
                style: const TextStyle(
                  color: Colors.black,
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
