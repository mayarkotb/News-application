
import 'package:dio/dio.dart';
import 'package:news_app/Models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future <List<ArticleModel>> getGeneralNews({required String category}) async {
    try {
  var response = await dio.get(
      'https://newsapi.org/v2/everything?q=$category&language=en&apiKey=1a023efdcf254600b11063d565abf93f');
  Map<String, dynamic> jsonData = response.data;
  
  List<dynamic> articles = jsonData['articles'];
  
  List<ArticleModel> articlesList = [];
  
  for (var article in articles) {
    ArticleModel articleModel = ArticleModel.fromJson(article);
    articlesList.add(articleModel);
  }
  return articlesList;
}  catch (e) {
  return [];
}
  }
}
