import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_api/controller/news_controller.dart';

class SearchBarCustom extends StatelessWidget {

  NewsController newsController=Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        children: [
          Expanded(
              child: TextField(
                controller: newsController.searchController,
                decoration: InputDecoration(
                    hintText: "Search news...",
                    fillColor: Theme.of(context).colorScheme.primaryContainer,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none
                    )
                ),
              )),
          Obx(()=>newsController.isNewsForYouLoading.value
          ? Container(
            width: 50,height: 50,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(10)
            ),
            child: CircularProgressIndicator(color: Colors.white,),
               )
          :InkWell(
            onTap: (){
              newsController.searchNews(newsController.searchController.text);
            },
            child: Container(
              width: 50,height: 50,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Icon(Icons.search),
            ),
          ))
        ],
      ),
    );
  }
}
