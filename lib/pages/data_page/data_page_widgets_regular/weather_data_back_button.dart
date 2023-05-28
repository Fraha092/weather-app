import 'package:flutter/material.dart';

class WeatherDataBackButton extends StatelessWidget {
  const WeatherDataBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orangeAccent,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.all(20),
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text("Back"),
      ),
    );
  }
}
