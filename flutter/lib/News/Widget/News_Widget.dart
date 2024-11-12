import 'package:flutter/cupertino.dart';

class NewsWidget extends StatelessWidget {
   String author;
   String title;
   String description;
   String urlToImage;
   NewsWidget({
     required this.description,
     required this.title,
     required this.author,
     required this.urlToImage,
});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(author),
        Text(title),
        Text(description),
      Image.network(urlToImage)
      ],
    );
  }
}
