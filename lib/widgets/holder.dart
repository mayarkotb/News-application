// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/services/news_services.dart';
// import 'package:news_app/widgets/news_tile.dart';

// import '../Models/article_model.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({
//     super.key,
//   });

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//    List<ArticleModel> articles = [];
   
//    bool isLoading =true;

//   @override
//   void initState()
//   {
//     super.initState();

//     getNews();
//   }

//   Future<void> getNews() async {
//     articles= await NewsService(Dio()).getGeneralNews();
//      isLoading =false;

//     setState(() {

//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading ? const SliverFillRemaining(child: Center(child:  CircularProgressIndicator(),),)
//      : SliverList(
//       delegate: SliverChildBuilderDelegate(
//         childCount: articles.length,
//         (context, index) {
//           return  Padding(
//             padding: const EdgeInsets.only(bottom: 22),
//             child: NewsTile(articleModel: articles[index],),
//           );
//         },
//       ),
//     );
//   }
// }
