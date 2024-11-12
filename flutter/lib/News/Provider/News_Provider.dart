import 'package:flutter/cupertino.dart';
import 'package:project1/News/Services/News_Services.dart';

import '../Models/News_Model.dart';

class NewsProvider extends ChangeNotifier{
  NewsModel?newsModel;
  Future<void>fitshdata()async{
    newsModel=await NewsServices.getall();
    notifyListeners();
  }
}