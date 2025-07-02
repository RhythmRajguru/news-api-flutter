import 'package:flutter/material.dart';

import '../../model/news_model.dart';

class NewsDetail extends StatelessWidget {

  final NewsModel news;
  const NewsDetail({required this.news});

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
                      CircleAvatar(backgroundColor: Theme.of(context).colorScheme.primary,minRadius: 15,maxRadius: 15,child: Text(news.author![0]),),
                      SizedBox(width: 10,),
                      Text(news.author ?? "Unknown",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 18,color: Theme.of(context).colorScheme.secondaryContainer),),
                    ],
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
