import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_api/components/loading_newssource_list.dart';
import 'package:news_api/controller/news_controller.dart';
import 'package:news_api/view/screen/articals_screen.dart';

class NewsSourceScreen extends StatelessWidget {
  
  NewsController newsController=Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Sources'),
      ),
      body:newsController.isNewsSourcesLoading.value
      ?Column(
        children: [
          LoadingNewssourceList(),
          LoadingNewssourceList(),
          LoadingNewssourceList(),
          LoadingNewssourceList(),
          LoadingNewssourceList(),
          LoadingNewssourceList()
        ],
      )
      :ListView.builder(
        itemCount: newsController.newsSourcesList.length,
        itemBuilder: (context, index) {
          final source = newsController.newsSourcesList[index];
          return ListTile(
            leading: CircleAvatar(backgroundColor: Theme.of(context).colorScheme.primary,child: Center(child: Text('${index+1}'),),),
            title: Text(source.name),
            subtitle: Text(source.description),
            trailing: Text(source.language),
            onTap: () {
              Get.to(()=>ArticalsScreen());
              newsController.searchNews(source.id);
            },
          );
        },
      )
    );
  }
}
