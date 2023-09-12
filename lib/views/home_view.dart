import 'package:flutter/material.dart';
import 'package:news_app/components/news_card.dart';
import 'package:news_app/models/top_news.dart';
import 'package:news_app/services/fetch_servis.dart';
import 'package:news_app/theme/app_colors.dart';
import 'package:news_app/views/search_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TopNews? topNews;

  Future<void> fetchNews() async {
    topNews = await TopNewsService().fetchTopNews();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBar,
        title: const Text(
          "News Aggregator",
          style: TextStyle(
            color: AppColors.white,
          ),
        ),
      ),
      body: topNews == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: topNews!.articles.length,
              itemBuilder: (context, index) {
                final item = topNews!.articles[index];
                return NewsCard(item: item);
              },
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.appBar,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SearchView(),
            ),
          );
        },
        child: const Icon(
          Icons.search,
          color: AppColors.white,
        ),
      ),
    );
  }
}
