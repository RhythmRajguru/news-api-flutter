import 'package:flutter/material.dart';
import 'package:news_api/components/loading_container.dart';

class LoadingNewssourceList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
        ListTile(
          leading: LoadingContainer(height: 20, width: 20, top_margin: 0,),
          title: LoadingContainer(height: 10, width: MediaQuery.of(context).size.width/5, top_margin: 0,),
          subtitle:Column(
            children: [
              LoadingContainer(height: 10, width: MediaQuery.of(context).size.width/2, top_margin: 5,),
              LoadingContainer(height: 10, width: MediaQuery.of(context).size.width/2, top_margin: 5,),
            ],
          ),
          trailing: LoadingContainer(height: 10 ,width: 20, top_margin: 0,),
        );
  }
}
