import 'package:flutter/material.dart';
import 'package:project1/News/Models/News_Model.dart';
import 'package:project1/News/Provider/News_Provider.dart';
import 'package:project1/News/Services/News_Services.dart';
import 'package:provider/provider.dart';

import '../Widget/News_Widget.dart';
class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Data',style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w900),
        ),
        backgroundColor: Colors.teal,
      ),
      body:Consumer<NewsProvider>(
      builder: (context,newssorovider , child) {
        var objj = newssorovider.newsModel;
        if (objj == null) {
          newssorovider.fitshdata();
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
       return  ListView.builder(
            itemCount: objj.articles.length,
            itemBuilder: (context, index) {
              return NewsWidget(
                title: objj.articles[index]['title'],
                description: objj.articles[index]['description'],
                urlToImage: objj.articles[index]['urlToImage'],
                author: objj.articles[index]['author'],
              );
            },
          );
        };
      }
      ),
    );
  }
}
