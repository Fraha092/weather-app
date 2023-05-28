import 'package:flutter/material.dart';

class VisibilitySimplified extends StatelessWidget {
  const VisibilitySimplified({
    super.key,
    required this.visibility,
  });

  final int visibility;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:20,top: 5,right: 20),
        child: Row(
          children: [
            Expanded(
              child: Text(
                "Visibility: ${visibility/1000} Km",
               // textAlign: TextAlign.center,
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
