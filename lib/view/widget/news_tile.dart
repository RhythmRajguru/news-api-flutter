import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;
  final String author;
  final VoidCallback onTap;


   NewsTile({super.key, required this.imageUrl, required this.title, required this.time, required this.author, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10,),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(imageUrl,fit: BoxFit.cover,),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(backgroundColor: Theme.of(context).colorScheme.primary,minRadius: 15,maxRadius: 15,),
                      SizedBox(width: 10,),
                      Expanded(child: Text(author,maxLines: 1,overflow: TextOverflow.ellipsis,)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text(title,maxLines: 2,overflow: TextOverflow.ellipsis,style: Theme.of(context).textTheme.bodyMedium,),
                  SizedBox(height: 10,),
                  Text(time,maxLines: 2,overflow: TextOverflow.ellipsis,style: Theme.of(context).textTheme.labelSmall,),
                ],
              ),
            )                    ],
        ),
      ),
    );
  }
}
