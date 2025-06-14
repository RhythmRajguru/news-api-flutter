import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_api/controller/bottom_navigation_controller.dart';

class NavigationBarCustom extends StatelessWidget {
  BottomNavController bottomNavController=Get.put(BottomNavController());
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          height: MediaQuery.of(context).size.width*.14,
          width: MediaQuery.of(context).size.width*.6,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  bottomNavController.Index.value=0;
                },
                child: Obx(()=>AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.bounceInOut,
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: bottomNavController.Index.value==0
                        ?Theme.of(context).colorScheme.primary
                        :null,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(child: Icon(Icons.home,size: 25,
                      color: bottomNavController.Index.value==0?Theme.of(context).colorScheme.onBackground:Theme.of(context).colorScheme.secondaryContainer,)))),
              ),
              InkWell(
                onTap: (){
                  bottomNavController.Index.value=1;
                },
                child:Obx(()=> AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.bounceInOut,
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: bottomNavController.Index.value==1
                            ?Theme.of(context).colorScheme.primary
                            :null,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(child: Icon(Icons.book,size: 25,
                      color:bottomNavController.Index.value==1? Theme.of(context).colorScheme.onBackground:Theme.of(context).colorScheme.secondaryContainer,)))),
              ),
              InkWell(
                onTap: (){
                  bottomNavController.Index.value=2;
                },
                child:Obx(()=> AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                    curve: Curves.bounceInOut,
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color:bottomNavController.Index.value==2
                            ?Theme.of(context).colorScheme.primary
                            :null,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(child: Icon(Icons.settings,size: 25,
                      color: bottomNavController.Index.value==2?Theme.of(context).colorScheme.onBackground:Theme.of(context).colorScheme.secondaryContainer,)))),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
