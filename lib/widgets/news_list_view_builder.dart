import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;

  const NewsListViewBuilder({ required  this.category,
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
 var future;
  @override
  void initState() {
    super.initState();
    future= NewsService(Dio()).getGeneralNews(category:widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
          return NewsListView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
         return const SliverFillRemaining(
            child: Center(
              child: Text('Oops there was an error, try later'),
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
    
    // return isLoading
    //     ? const SliverFillRemaining(
    //         child: Center(
    //           child: CircularProgressIndicator(),
    //         ),
    //       )
    //     : articles.isNotEmpty
    //         ? NewsListView(
    //             articles: articles,
    //           )
    //         : const SliverFillRemaining(
    //             child: Center(
    //               child: Text('OOps there was an error, try later'),
    //             ),
    //           );
  }
}