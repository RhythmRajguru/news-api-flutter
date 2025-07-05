import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:news_api/controller/news_controller.dart';

import '../../model/news_model.dart';

class NewsDetail extends StatelessWidget {

  final NewsModel news;
  NewsDetail({required this.news});

  NewsController newsController=Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Detail'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
             Container(
               height: 350,
               width: double.infinity,
               decoration: BoxDecoration(
                 color: Colors.red,
                 borderRadius: BorderRadius.circular(20),
               ),
               child: ClipRRect(
                 borderRadius: BorderRadius.circular(10),
                 child: Image.network(news.urlToImage ?? "https://www.financialexpress.com/wp-content/uploads/2023/07/Breaking-2.jpg",
                          fit: BoxFit.cover,),
               ),),
            SizedBox(height: 20,),
            Text(news.title!,
              maxLines: 2,overflow: TextOverflow.ellipsis,
              style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
              SizedBox(height: 20,),

                  Row(
                    children: [
                      CircleAvatar(backgroundColor: Theme.of(context).colorScheme.primary,minRadius: 15,maxRadius: 15,child: Text(news.author![0],style: TextStyle(color: Colors.white),),),
                      SizedBox(width: 10,),
                      Text(news.author ?? "Unknown",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 18,color: Theme.of(context).colorScheme.secondaryContainer),),
                    ],
                  ),
              SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Obx(() => IconButton(
                  onPressed: () {
                    if (newsController.isSpeaking.value) {
                      newsController.stop();
                    } else {
                      newsController.speak(news.description ?? "No Description");
                    }
                  },
                  icon: Icon(
                    newsController.isSpeaking.value ? Icons.stop : Icons.play_arrow_rounded,
                    size: 50,
                  ),
                )),
                Expanded(
                  child: Obx(() => Lottie.asset(
                    'assets/animation/audio_wave.json',
                    height: 70,
                    animate: newsController.isSpeaking.value,
                    fit: BoxFit.fill,
                  )),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
              Text(news.description ?? "No data available",
                  style: TextStyle(fontSize: 18,color: Theme.of(context).colorScheme.secondaryContainer)),
              SizedBox(height: 10,),
              Container(
                  margin: EdgeInsets.only(top: 10,right: 5),

                  alignment: Alignment.centerRight,
                  child: Text(news.publishedAt,style: Theme.of(context).textTheme.labelSmall,)),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
