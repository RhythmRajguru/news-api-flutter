import 'package:flutter/material.dart';

class NewsDetail extends StatelessWidget {
  const NewsDetail({super.key});

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
                 child: Image.network('https://static.toiimg.com/thumb/msid-121862502,imgsize-1743979,width-400,resizemode-4/121862502.jpg',
                          fit: BoxFit.cover,),
               ),),
            SizedBox(height: 20,),
            Text("I let ChatGPT manage my money for 30 days and the results shocked me",
              maxLines: 2,overflow: TextOverflow.ellipsis,
              style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(backgroundColor: Theme.of(context).colorScheme.primary,minRadius: 15,maxRadius: 15,),
                      SizedBox(width: 10,),
                      Text('Nitish Kumar',style: TextStyle(fontSize: 18,color: Theme.of(context).colorScheme.secondaryContainer),),
                    ],
                  ),
                  Text('2 days ago',style: Theme.of(context).textTheme.labelSmall,),
                ],
              ),
              SizedBox(height: 20,),
              Text('Two people died and some are feared swept away after an old bridge over the Indrayani '
                  'river in Pune collapsed on Sunday. Three persons were rescued so far following the incident'
                  ' which occurred near Kundamala area in Maval tehsil, police said.'
                  'Two people died and some are feared swept away after an old bridge over the Indrayani '
                  'river in Pune collapsed on Sunday. Three persons were rescued so far following the incident'
                  ' which occurred near Kundamala area in Maval tehsil, police said.'
                  'Two people died and some are feared swept away after an old bridge over the Indrayani '
                  'river in Pune collapsed on Sunday. Three persons were rescued so far following the incident'
                  ' which occurred near Kundamala area in Maval tehsil, police said.'
                  'Two people died and some are feared swept away after an old bridge over the Indrayani '
                  'river in Pune collapsed on Sunday. Three persons were rescued so far following the incident'
                  ' which occurred near Kundamala area in Maval tehsil, police said.',
                  style: TextStyle(fontSize: 18,color: Theme.of(context).colorScheme.secondaryContainer)),
            ],
          ),
        ),
      ),
    );
  }
}
