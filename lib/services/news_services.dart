import 'package:dio/dio.dart';
import 'package:news_app/Models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  getGeneralNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=a2f5dca5093a4540a7cf6c006e9f4d95');
    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData['articles'];

    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          image: article["urlToImage"],
          title: article['title'],
          subtitle: article['description']);
      articlesList.add(articleModel);
    }
    print(articlesList);
  }
}
