import 'package:flutter/material.dart';
import 'package:news_app/models/articles.dart';

class NewsDetailDesc extends StatelessWidget {
  const NewsDetailDesc({
    super.key,
    required this.news,
  });

  final Articles news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        news.description ?? '',
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
