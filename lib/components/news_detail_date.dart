import 'package:flutter/material.dart';

class NewsDetailDate extends StatelessWidget {
  const NewsDetailDate({
    super.key,
    required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.schedule, size: 28),
        const SizedBox(width: 10),
        Text(
          time,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
