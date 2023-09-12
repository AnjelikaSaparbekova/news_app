import 'package:flutter/material.dart';
import 'package:news_app/constants/api_const.dart';
import 'package:news_app/models/articles.dart';

class NewsDetailImage extends StatelessWidget {
  const NewsDetailImage({
    super.key,
    required this.news,
  });

  final Articles news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Image.network(
        news.urlToImage ?? ApiConst.image,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
