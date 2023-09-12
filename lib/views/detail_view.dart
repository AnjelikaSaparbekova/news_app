import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/components/news_detail_btn.dart';
import 'package:news_app/components/news_detail_date.dart';
import 'package:news_app/components/news_detail_desc.dart';
import 'package:news_app/components/news_detail_divider.dart';
import 'package:news_app/components/news_detail_image.dart';
import 'package:news_app/components/news_detail_title.dart';
import 'package:news_app/models/articles.dart';
import 'package:news_app/theme/app_colors.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key, required this.news}) : super(key: key);

  final Articles news;

  @override
  Widget build(BuildContext context) {
    final time =
        DateFormat('d MMM, y. H:m').format(DateTime.parse(news.publishedAt));
    return Scaffold(
      appBar: AppBar(
        actions: news.url != null
            ? [
                IconButton(
                  onPressed: () {
                    Share.share(
                      'News App ti Kurs13 gruppasi jasap jatat. Bul tirkemenin sylkasy -> ${news.url!}',
                    );
                  },
                  icon: const Icon(Icons.share),
                ),
              ]
            : null,
        backgroundColor: AppColors.appBar,
        title: Text(
          news.title ?? "",
          style: const TextStyle(
            fontSize: 18,
            overflow: TextOverflow.fade,
          ),
        ),
        foregroundColor: AppColors.white,
      ),
      body: Column(
        children: [
          NewsDetailTitle(news: news),
          const NewsDetailDivider(),
          const SizedBox(height: 10),
          NewsDetailDate(time: time),
          const SizedBox(height: 10),
          NewsDetailImage(news: news),
          const SizedBox(height: 10),
          NewsDetailDesc(news: news),
          const SizedBox(height: 10),
          news.url != null
              ? NewsDetailButton(
                  onPressed: () async {
                    final url = Uri.parse(news.url!);
                    // if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                    // }
                  },
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
