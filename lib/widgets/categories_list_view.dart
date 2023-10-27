import 'package:flutter/material.dart';
import 'package:news_app/Models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
       image: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      categoryName: 'Entertaiment',
    ),
    CategoryModel(
      image: 'assets/general.avif',
      categoryName: 'General',
    ),
    CategoryModel(
      image: 'assets/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/sports.avif',
      categoryName: 'Sports',
    ),
    CategoryModel(
       image: 'assets/business.avif',
      categoryName: 'Business',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
