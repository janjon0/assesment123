import 'package:flutter/foundation.dart';

class NewsModel{
  List<dynamic>articles;
  NewsModel({
    required this.articles,
});
  factory NewsModel.fromjson(Map<String,dynamic>json){
    return NewsModel(
      articles: json['articles'],
    );
  }
}