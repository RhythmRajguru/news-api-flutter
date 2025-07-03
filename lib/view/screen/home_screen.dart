import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_api/components/navigation_bar.dart';
import 'package:news_api/components/trending_loading_card.dart';
import 'package:news_api/controller/news_controller.dart';
import 'package:news_api/view/screen/news_detail.dart';
import 'package:news_api/view/widget/news_tile.dart';
import 'package:news_api/view/widget/tranding_card.dart';

import '../../components/loading_listtile.dart';

class HomeScreen extends StatelessWidget {

  NewsController newsController=Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(100)
            ),
            child: Icon(Icons.dashboard),
          ),
          SizedBox(width: 10,),
          InkWell(
            onTap: (){

            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Icon(Icons.person),
            ),
          ),
          SizedBox(width: 10,),
        ],
        title: Text('Newseekers',style: Theme.of(context).textTheme.headlineLarge,),

      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Hottest News',style: Theme.of(context).textTheme.bodyLarge,),
                 Text('See all',style: Theme.of(context).textTheme.labelSmall,)
               ],
             ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Obx(()=>newsController.isTrendingLoading.value
                      ?Row(children: [
                       TrendingLoadingCard(),
                       TrendingLoadingCard(),
                  ],
                  )
                      : Row(
                    children:
                    newsController.trendingNewsList.map((e)=>
                        TrandingCard(
                          title: e.title,
                          author: e.author ?? "Unknown",
                          imageUrl: e.urlToImage,
                          tag: 'Trending No.1',
                          time: e.publishedAt,
                          onTap: () {
                            Get.to(()=>NewsDetail(news: e,));
                          },
                        ),).toList().sublist(0,5),

                  ),)
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('News for you',style: Theme.of(context).textTheme.bodyLarge,),
                    Text('See all',style: Theme.of(context).textTheme.labelSmall,)
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Obx(()=>newsController.isTrendingLoading.value
                        ?Column(children: [
                          LoadingListtile(),
                          LoadingListtile(),
                          LoadingListtile(),
                          LoadingListtile(),
                          LoadingListtile(),
                    ],)
                        :Column(
                      children:
                      newsController.trendingNewsList.map((e)=>
                          NewsTile(
                            title: e.title,
                            author: e.author ?? "Unknown",
                            imageUrl: e.urlToImage ?? "https://www.financialexpress.com/wp-content/uploads/2023/07/Breaking-2.jpg",
                            time: e.publishedAt,
                            onTap: () {
                              Get.to(()=>NewsDetail(news: e,));
                            },
                          ),).toList().sublist(0,5),
                    ),),

                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tesla News',style: Theme.of(context).textTheme.bodyLarge,),
                    Text('See all',style: Theme.of(context).textTheme.labelSmall,)
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Obx(()=>newsController.isTeslaNewsLoading.value
                        ?Column(children: [
                      LoadingListtile(),
                      LoadingListtile(),
                      LoadingListtile(),
                      LoadingListtile(),
                      LoadingListtile(),
                    ],)
                        :Column(
                      children:
                      newsController.teslaNewsList.map((e)=>
                          NewsTile(
                            title: e.title,
                            author: e.author ?? "Unknown",
                            imageUrl: e.urlToImage ?? "https://www.financialexpress.com/wp-content/uploads/2023/07/Breaking-2.jpg",
                            time: e.publishedAt,
                            onTap: () {
                              Get.to(()=>NewsDetail(news: e,));
                            },
                          ),).toList().sublist(0,5),
                    ),),

                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Apple News',style: Theme.of(context).textTheme.bodyLarge,),
                    Text('See all',style: Theme.of(context).textTheme.labelSmall,)
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Obx(()=>newsController.isAppleNewsLoading.value
                        ?Column(children: [
                      LoadingListtile(),
                      LoadingListtile(),
                      LoadingListtile(),
                      LoadingListtile(),
                      LoadingListtile(),
                    ],)
                        :Column(
                      children:
                      newsController.appleNewsList.map((e)=>
                          NewsTile(
                            title: e.title,
                            author: e.author ?? "Unknown",
                            imageUrl: e.urlToImage ?? "https://www.financialexpress.com/wp-content/uploads/2023/07/Breaking-2.jpg",
                            time: e.publishedAt,
                            onTap: () {
                              Get.to(()=>NewsDetail(news: e,));
                            },
                          ),).toList().sublist(0,5),
                    ),),

                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Google News',style: Theme.of(context).textTheme.bodyLarge,),
                    Text('See all',style: Theme.of(context).textTheme.labelSmall,)
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Obx(()=>newsController.isGoogleNewsLoading.value
                        ?Column(children: [
                      LoadingListtile(),
                      LoadingListtile(),
                      LoadingListtile(),
                      LoadingListtile(),
                      LoadingListtile(),
                    ],)
                        :Column(
                      children:
                      newsController.googleNewsList.map((e)=>
                          NewsTile(
                            title: e.title,
                            author: e.author ?? "Unknown",
                            imageUrl: e.urlToImage ?? "https://www.financialexpress.com/wp-content/uploads/2023/07/Breaking-2.jpg",
                            time: e.publishedAt,
                            onTap: () {
                              Get.to(()=>NewsDetail(news: e,));
                            },
                          ),).toList().sublist(0,5),
                    ),),

                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Microsoft News',style: Theme.of(context).textTheme.bodyLarge,),
                    Text('See all',style: Theme.of(context).textTheme.labelSmall,)
                  ],
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Obx(()=>newsController.isMicrosoftNewsLoading.value
                        ?Row(children: [
                      TrendingLoadingCard(),
                      TrendingLoadingCard(),
                    ],
                    )
                        : Row(
                      children:
                      newsController.microsoftNewsList.map((e)=>
                          TrandingCard(
                            title: e.title,
                            author: e.author ?? "Unknown",
                            imageUrl: e.urlToImage,
                            tag: 'Trending No.1',
                            time: e.publishedAt,
                            onTap: () {
                              Get.to(()=>NewsDetail(news: e,));
                            },
                          ),).toList().sublist(0,5),

                    ),)
                ),
                SizedBox(height: 50,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
