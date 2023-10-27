import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Color.fromARGB(255, 255, 183, 75)),
            )
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListViewBuilder(category: 'general',),
          ],
        ),
      ),

      // child: Column(
      //   children: [
      //     CategoriesListView(),
      //     SizedBox(
      //       height: 32,
      //     ),
      //     NewsListView(),
      //   ],
    );
  }
}

// class NewsListViewBuilder extends StatefulWidget {
//   const NewsListViewBuilder({
//     super.key,
//   });

//   @override
//   State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
// }

// class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
//   List<ArticleModel> articles = [];
   
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
//      :NewsListView();
//   }
// }
