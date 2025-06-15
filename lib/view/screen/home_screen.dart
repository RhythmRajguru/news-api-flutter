import 'package:flutter/material.dart';
import 'package:news_api/components/navigation_bar.dart';
import 'package:news_api/view/widget/news_tile.dart';
import 'package:news_api/view/widget/tranding_card.dart';

class HomeScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Newseekers',style: Theme.of(context).textTheme.headlineLarge,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text('Hottest News',style: Theme.of(context).textTheme.bodyLarge,),
               Text('See all',style: Theme.of(context).textTheme.labelSmall,)
             ],
           ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TrandingCard(
                      title: 'Air India Mumbai-London Flight Returns After 3 Hours In Air: Flightradar24',
                      author: 'Samiran Mishra',
                      imageUrl: 'https://c.ndtvimg.com/2025-06/cnabujbk_air-india-bombay-flightradar-_625x300_13_June_25.jpg?downsize=773:435',
                      tag: 'Trending No.1',
                      time: '2 mins ago',
                    ),
                    TrandingCard(
                      title: "Karisma Kapoor's ex-husband Sunjay Kapur passed away at 53: Here's how he died",
                      author: 'Sneha Biswas',
                      imageUrl: 'https://www.livemint.com/lm-img/img/2025/06/13/600x338/karisma_1749783840231_1749783840400.jpg',
                      tag: 'Trending No.1',
                      time: '1 days ago',
                    ),
                    TrandingCard(
                      title: 'I let ChatGPT manage my money for 30 days and the results shocked me',
                      author: 'Deepika Chelani',
                      imageUrl: 'https://www.livemint.com/lm-img/img/2025/06/12/600x338/OPENAI-CHATGPT--0_1744423543278_1749716788119.JPG',
                      tag: 'Trending No.1',
                      time: '2 days ago',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('News For You',style: Theme.of(context).textTheme.bodyLarge,),
                  Text('See all',style: Theme.of(context).textTheme.labelSmall,)
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*.15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                     NewsTile(imageUrl: 'https://th-i.thgim.com/public/incoming/9b6fih/article69693999.ece/alternates/LANDSCAPE_1200/PTI06_14_2025_RPT027A.jpg', title: 'Air India Ahmedabad plane crash: Death toll hits 270, families wait for bodies', time: '1 day ago',author: 'The Hindu',),
                     NewsTile(imageUrl: 'https://www.livemint.com/lm-img/img/2025/06/14/600x338/INDIA-US-SPACE-ISS-0_1749883494134_1749883511185.jpg', title: "Indian astronaut Shubhanshu Shukla's Axiom-4 mission to ISS now rescheduled for June 19", time: '2 day ago',author: 'Mint',),
                     NewsTile(imageUrl: 'https://static.toiimg.com/thumb/msid-121862502,imgsize-1743979,width-400,resizemode-4/121862502.jpg', title: "2 Killed After Bridge Collpases Into River Near Pune, Rescue Ops On", time: 'Today',author: 'NDTV',),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
