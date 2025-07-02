import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_api/model/news_model.dart';



class NewsController extends GetxController{

  RxList<NewsModel> trendingNewsList=<NewsModel>[].obs;

  RxList<NewsModel> newsForYouList=<NewsModel>[].obs;
  RxList<NewsModel> newsForYouList5=<NewsModel>[].obs;

  RxList<NewsModel> appleNewsList=<NewsModel>[].obs;
  RxList<NewsModel> appleNewsList5=<NewsModel>[].obs;

  RxList<NewsModel> teslaNewsList=<NewsModel>[].obs;
  RxList<NewsModel> teslaNewsList5=<NewsModel>[].obs;

  RxList<NewsModel> googleNewsList=<NewsModel>[].obs;
  RxList<NewsModel> googleNewsList5=<NewsModel>[].obs;

  RxBool isTrendingLoading=false.obs;
  RxBool isNewsForYouLoading=false.obs;
  RxBool isAppleNewsLoading=false.obs;
  RxBool isTeslaNewsLoading=false.obs;
  RxBool isGoogleNewsLoading=false.obs;

  void onInit()async{
    getTrendingNews();
    getNewsForYou();
    getNewsForYou5();
    getAppleNews();
    getAppleNews5();
    getTeslaNews();
    getTeslaNews5();
    getGoogleNews();
    getGoogleNews5();
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
      var baseUrl="https://newsapi.org/v2/everything?domains=wsj.com&apikey=39ffef110bd245e8aa5abf670fc91ab2";
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

  Future<void> getNewsForYou5() async{
    isNewsForYouLoading.value=true;
    try{
      var baseUrl="https://newsapi.org/v2/everything?domains=wsj.com&apikey=39ffef110bd245e8aa5abf670fc91ab2";
      var response=await http.get(Uri.parse(baseUrl));

      if(response.statusCode==200){

        var body=jsonDecode(response.body);
        var articles=body['articles'];

        for(var news in articles){
          newsForYouList.add(NewsModel.fromJson(news));
        }
        newsForYouList5.value=newsForYouList.sublist(0,5).obs;
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

  Future<void> getAppleNews5() async{
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
        appleNewsList5.value=appleNewsList.sublist(0,5).obs;
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

  Future<void> getTeslaNews5() async{
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
        teslaNewsList5.value=teslaNewsList.sublist(0,5).obs;
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

  Future<void> getGoogleNews5() async{
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
        googleNewsList5.value=googleNewsList.sublist(0,5).obs;
      }else{
        Get.snackbar('Error', 'Something went wrong in news for you list');
      }
    }
    catch(e){
      print(e);
    }isGoogleNewsLoading.value=false;}
}