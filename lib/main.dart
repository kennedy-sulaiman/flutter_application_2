import 'package:flutter/material.dart';
import 'package:flutter_project_2/Article.dart';
import 'package:flutter_project_2/DetailScreen.dart';
import 'package:flutter_project_2/NewListPages.dart';
import 'package:flutter_project_2/ArticleWebView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "News App",
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: NewsListPages.routeName,
      routes: {
        NewsListPages.routeName: (context) => NewsListPages(),
        DetailScreen.routeName: (context) => DetailScreen(
            article: ModalRoute.of(context)?.settings.arguments as Article),
        ArticleWebView.routeName: (context) =>
            ArticleWebView(url: ModalRoute.of(context)?.settings.arguments as String)
      },
    );
  }
}
