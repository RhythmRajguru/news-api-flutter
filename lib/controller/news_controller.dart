import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_api/model/news_model.dart';



class NewsController extends GetxController{

  final TextEditingController searchController = TextEditingController();

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }

  RxList<NewsModel> trendingNewsList=<NewsModel>[].obs;
  RxList<NewsModel> newsForYouList=<NewsModel>[].obs;
  RxList<NewsModel> appleNewsList=<NewsModel>[].obs;
  RxList<NewsModel> teslaNewsList=<NewsModel>[].obs;
  RxList<NewsModel> googleNewsList=<NewsModel>[].obs;
  RxList<NewsModel> microsoftNewsList=<NewsModel>[].obs;


  RxBool isTrendingLoading=false.obs;
  RxBool isNewsForYouLoading=false.obs;
  RxBool isAppleNewsLoading=false.obs;
  RxBool isTeslaNewsLoading=false.obs;
  RxBool isGoogleNewsLoading=false.obs;
  RxBool isMicrosoftNewsLoading=false.obs;

  void onInit()async{
    getTrendingNews();
    getNewsForYou();
    getAppleNews();
    getTeslaNews();
    getGoogleNews();
    getMicrosoftNews();
    super.onInit();
  }

  Future<void> getTrendingNews() async{
    isTrendingLoading.value=true;
    try{
      var baseUrl="https://newsapi.org/v2/top-headlines?sources=techcrunch&apikey=39ffef110bd245e8aa5abf670fc91ab2";
      var response=await http.get(Uri.parse(baseUrl));

      if(response.statusCode==200){

        var body=jsonDecode(response.body);
        var articals=body['articles'];

        for(var news in articals){
          trendingNewsList.add(NewsModel.fromJson(news));
        }
      }else{
        Get.snackbar('Error', 'Something went wrong in trending news');
      }
    }
    catch(e){
      print(e);
    }
    isTrendingLoading.value=false;
  }

  Future<void> getNewsForYou() async{
    isNewsForYouLoading.value=true;
    try{
      var baseUrl="https://newsapi.org/v2/everything?q=apple&apikey=39ffef110bd245e8aa5abf670fc91ab2";
      var response=await http.get(Uri.parse(baseUrl));

      if(response.statusCode==200){

        var body=jsonDecode(response.body);
        var articles=body['articles'];

        for(var news in articles){
          newsForYouList.add(NewsModel.fromJson(news));
        }
      }else{
        Get.snackbar('Error', 'Something went wrong in news for you list');
      }
    }
    catch(e){
      print(e);
    }isNewsForYouLoading.value=false;}

  Future<void> getAppleNews() async{
    isAppleNewsLoading.value=true;
    try{
      var baseUrl="https://newsapi.org/v2/everything?q=apple&apikey=39ffef110bd245e8aa5abf670fc91ab2";
      var response=await http.get(Uri.parse(baseUrl));

      if(response.statusCode==200){

        var body=jsonDecode(response.body);
        var articles=body['articles'];

        for(var news in articles){
          appleNewsList.add(NewsModel.fromJson(news));
        }
      }else{
        Get.snackbar('Error', 'Something went wrong in news for you list');
      }
    }
    catch(e){
      print(e);
    }isAppleNewsLoading.value=false;}


  Future<void> getTeslaNews() async{
    isTeslaNewsLoading.value=true;
    try{
      var baseUrl="https://newsapi.org/v2/everything?q=tesla&apikey=39ffef110bd245e8aa5abf670fc91ab2";
      var response=await http.get(Uri.parse(baseUrl));

      if(response.statusCode==200){

        var body=jsonDecode(response.body);
        var articles=body['articles'];

        for(var news in articles){
          teslaNewsList.add(NewsModel.fromJson(news));
        }
      }else{
        Get.snackbar('Error', 'Something went wrong in news for you list');
      }
    }
    catch(e){
      print(e);
    }isTeslaNewsLoading.value=false;}


  Future<void> getGoogleNews() async{
    isGoogleNewsLoading.value=true;
    try{
      var baseUrl="https://newsapi.org/v2/everything?q=google&apikey=39ffef110bd245e8aa5abf670fc91ab2";
      var response=await http.get(Uri.parse(baseUrl));

      if(response.statusCode==200){

        var body=jsonDecode(response.body);
        var articles=body['articles'];

        for(var news in articles){
          googleNewsList.add(NewsModel.fromJson(news));
        }
      }else{
        Get.snackbar('Error', 'Something went wrong in news for you list');
      }
    }
    catch(e){
      print(e);
    }isGoogleNewsLoading.value=false;}

  Future<void> getMicrosoftNews() async{
    isMicrosoftNewsLoading.value=true;
    try{
      var baseUrl="https://newsapi.org/v2/everything?q=microsoft&apikey=39ffef110bd245e8aa5abf670fc91ab2";
      var response=await http.get(Uri.parse(baseUrl));

      if(response.statusCode==200){

        var body=jsonDecode(response.body);
        var articles=body['articles'];

        for(var news in articles){
          microsoftNewsList.add(NewsModel.fromJson(news));
        }
      }else{
        Get.snackbar('Error', 'Something went wrong in news for you list');
      }
    }
    catch(e){
      print(e);
    }isMicrosoftNewsLoading.value=false;}

  Future<void> searchNews(String search) async{
    isNewsForYouLoading.value=true;
    try{
      var baseUrl="https://newsapi.org/v2/everything?q=$search&apikey=39ffef110bd245e8aa5abf670fc91ab2";
      var response=await http.get(Uri.parse(baseUrl));

      if(response.statusCode==200){

        var body=jsonDecode(response.body);
        var articles=body['articles'];

        newsForYouList.clear();

        int i=0;
        for(var news in articles){
          i++;
          newsForYouList.add(NewsModel.fromJson(news));
          if(i==10){
            break;
          }
        }
      }else{
        Get.snackbar('Error', 'Something went wrong in news for you list');
      }
    }
    catch(e){
      print(e);
    }isNewsForYouLoading.value=false;}


}