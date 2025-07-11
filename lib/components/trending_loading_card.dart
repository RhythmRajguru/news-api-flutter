import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loading_container.dart';

class TrendingLoadingCard extends StatelessWidget {
  const TrendingLoadingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(right: 10),

      // height: 300,
      width: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primaryContainer
      ),
      child: Column(
        children: [
          LoadingContainer(height: 200, width: MediaQuery.of(context).size.width, top_margin: 0,),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LoadingContainer(height: 10, width: MediaQuery.of(context).size.width/3, top_margin: 0,),
                LoadingContainer(height: 10, width: MediaQuery.of(context).size.width/6, top_margin: 0,),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.all(5),
            child: LoadingContainer(height: 10, width: MediaQuery.of(context).size.width/2, top_margin: 0,),),
          Padding(
            padding: EdgeInsets.all(5),
            child: LoadingContainer(height: 10, width: MediaQuery.of(context).size.width/2, top_margin: 0,),),

          const SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2),
            child: Row(
              children: [
                SizedBox(width: 10,),
                LoadingContainer(height: 20, width: 20, top_margin: 0,),
                SizedBox(width: 10,),
                LoadingContainer(height: 10, width: MediaQuery.of(context).size.width/6, top_margin: 0,),
              ],
            ),
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}
