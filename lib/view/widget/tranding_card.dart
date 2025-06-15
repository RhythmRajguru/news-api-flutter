import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrandingCard extends StatelessWidget {

  final String imageUrl;
  final String tag;
  final String time;
  final String title;
  final String author;
  final VoidCallback onTap;

  const TrandingCard({super.key, required this.imageUrl, required this.tag, required this.time, required this.title, required this.author, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 10),

        // height: 300,
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.primaryContainer
        ),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 270,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.background
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(imageUrl,fit: BoxFit.cover,)),

            ),
            const SizedBox(height: 10,),
             Padding(
               padding: EdgeInsets.all(5),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(tag,style: Theme.of(context).textTheme.labelSmall,),
                  Text(time,style: Theme.of(context).textTheme.labelSmall,),
                ],
                         ),
             ),
            const SizedBox(height: 10,),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(title,maxLines: 2,overflow: TextOverflow.ellipsis,style:Theme.of(context).textTheme.bodyLarge,)),

            const SizedBox(height: 10,),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 2),
               child: Row(
                children: [
                  SizedBox(width: 10,),
                  CircleAvatar(backgroundColor: Theme.of(context).colorScheme.primary,minRadius: 15,maxRadius: 15,),
                  SizedBox(width: 10,),
                  Text(author),
                ],
                         ),
             ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
