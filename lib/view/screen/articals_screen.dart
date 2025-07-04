import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:news_api/view/widget/search_bar.dart';

import '../../components/loading_listtile.dart';
import '../../controller/news_controller.dart';
import '../widget/news_tile.dart';
import 'news_detail.dart';

class ArticalsScreen extends StatelessWidget {

  NewsController newsController=Get.put(NewsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Articles'),
      ),
      body: SafeArea(child: Padding(
          padding: EdgeInsets.all(8),
      child: ListView(
        children: [
          SearchBarCustom(),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*.15),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child:  Obx(()=>newsController.isNewsForYouLoading.value
                  ?Column(children: [
                LoadingListtile(),
                LoadingListtile(),
                LoadingListtile(),
                LoadingListtile(),
                LoadingListtile(),
              ],)
                  :Column(
                children:
                newsController.newsForYouList.map((e)=>
                    NewsTile(
                      title: e.title,
                      author: e.author ?? "Unknown",
                      imageUrl: e.urlToImage ?? "https://www.financialexpress.com/wp-content/uploads/2023/07/Breaking-2.jpg",
                      time: e.publishedAt,
                      onTap: () {
                        Get.to(()=>NewsDetail(news: e,));
                      },
                    ),).toList(),
              ),),
            ),
          )
        ],
      ),))
    );
  }
}
