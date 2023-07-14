import 'package:flutter/material.dart';

class LineWidget extends StatelessWidget {
  const LineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 85,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.amber,
            Colors.white,
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
