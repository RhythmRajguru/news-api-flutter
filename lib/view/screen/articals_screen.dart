import 'package:flutter/material.dart';
import 'package:news_api/view/widget/search_bar.dart';

import '../widget/news_tile.dart';

class ArticalsScreen extends StatelessWidget {
  const ArticalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Articals'),
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
              child: Column(
                children: [
                  NewsTile(imageUrl: 'https://th-i.thgim.com/public/incoming/9b6fih/article69693999.ece/alternates/LANDSCAPE_1200/PTI06_14_2025_RPT027A.jpg',
                    title: 'Air India Ahmedabad plane crash: Death toll hits 270, families wait for bodies',
                    time: '1 day ago',author: 'The Hindu',),
                  NewsTile(imageUrl: 'https://www.livemint.com/lm-img/img/2025/06/14/600x338/INDIA-US-SPACE-ISS-0_1749883494134_1749883511185.jpg',
                    title: "Indian astronaut Shubhanshu Shukla's Axiom-4 mission to ISS now rescheduled for June 19",
                    time: '2 day ago',author: 'Mint',),
                  NewsTile(imageUrl: 'https://static.toiimg.com/thumb/msid-121862502,imgsize-1743979,width-400,resizemode-4/121862502.jpg',
                    title: "2 Killed After Bridge Collpases Into River Near Pune, Rescue Ops On",
                    time: 'Today',author: 'NDTV',),
                  NewsTile(imageUrl: 'https://th-i.thgim.com/public/incoming/9b6fih/article69693999.ece/alternates/LANDSCAPE_1200/PTI06_14_2025_RPT027A.jpg',
                    title: 'Air India Ahmedabad plane crash: Death toll hits 270, families wait for bodies',
                    time: '1 day ago',author: 'The Hindu',),
                  NewsTile(imageUrl: 'https://www.livemint.com/lm-img/img/2025/06/14/600x338/INDIA-US-SPACE-ISS-0_1749883494134_1749883511185.jpg',
                    title: "Indian astronaut Shubhanshu Shukla's Axiom-4 mission to ISS now rescheduled for June 19",
                    time: '2 day ago',author: 'Mint',),
                  NewsTile(imageUrl: 'https://static.toiimg.com/thumb/msid-121862502,imgsize-1743979,width-400,resizemode-4/121862502.jpg',
                    title: "2 Killed After Bridge Collpases Into River Near Pune, Rescue Ops On",
                    time: 'Today',author: 'NDTV',),
                  NewsTile(imageUrl: 'https://th-i.thgim.com/public/incoming/9b6fih/article69693999.ece/alternates/LANDSCAPE_1200/PTI06_14_2025_RPT027A.jpg',
                    title: 'Air India Ahmedabad plane crash: Death toll hits 270, families wait for bodies',
                    time: '1 day ago',author: 'The Hindu',),
                  NewsTile(imageUrl: 'https://www.livemint.com/lm-img/img/2025/06/14/600x338/INDIA-US-SPACE-ISS-0_1749883494134_1749883511185.jpg',
                    title: "Indian astronaut Shubhanshu Shukla's Axiom-4 mission to ISS now rescheduled for June 19",
                    time: '2 day ago',author: 'Mint',),
                  NewsTile(imageUrl: 'https://static.toiimg.com/thumb/msid-121862502,imgsize-1743979,width-400,resizemode-4/121862502.jpg',
                    title: "2 Killed After Bridge Collpases Into River Near Pune, Rescue Ops On",
                    time: 'Today',author: 'NDTV',),
                ],
              ),
            ),
          )
        ],
      ),))
    );
  }
}
