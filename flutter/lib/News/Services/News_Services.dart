import 'package:dio/dio.dart';
import 'package:project1/News/Models/News_Model.dart';

class NewsServices{
  static Dio dio=Dio();
  static Future getall()async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=7680e87bcb3140a9a4ee75b8b7f8e227');
      if (response.statusCode == 200) {
           return NewsModel.fromjson(response.data);
      }else{
        throw Exception('There is an Error');
      }
    }catch(e){
      return Exception(e);
    }
  }
}