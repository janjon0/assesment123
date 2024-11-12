import 'package:flutter/material.dart';
import 'package:project1/News/Provider/News_Provider.dart';
import 'package:project1/Search/Search_Page.dart';
import 'package:provider/provider.dart';

import 'Login/LoginPage.dart';
import 'Signup/Signup_Page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>NewsProvider())
      ],
      child: MaterialApp(
        home:SignupPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
