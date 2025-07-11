import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loading_container.dart';

class LoadingListtile extends StatelessWidget {
  const LoadingListtile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10,),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          LoadingContainer(height: 120, width: 120, top_margin: 0,),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    LoadingContainer(height: 20, width: 20, top_margin: 0,),
                    SizedBox(width: 10,),
                    LoadingContainer(height: 10, width: MediaQuery.of(context).size.width/4, top_margin: 0,),
                  ],
                ),
                SizedBox(height: 10,),
                LoadingContainer(height: 20, width: MediaQuery.of(context).size.width/2, top_margin: 0,),
                SizedBox(height: 5,),
                LoadingContainer(height: 20, width: MediaQuery.of(context).size.width/2, top_margin: 0,),
                SizedBox(height: 10,),
                LoadingContainer(height: 10, width: MediaQuery.of(context).size.width/4, top_margin: 0,),
              ],
            ),
          )                    ],
      ),
    );
  }
}
