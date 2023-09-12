import 'package:flutter/material.dart';
import 'package:news_app/models/articles.dart';

class NewsDetailTitle extends StatelessWidget {
  const NewsDetailTitle({
    super.key,
    required this.news,
  });

  final Articles news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
      child: Text(
        news.title ?? "",
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
