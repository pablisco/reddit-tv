import 'package:app/navigation.dart';
import 'package:flutter/material.dart';

import 'data/repository.dart';
import 'home/page.dart';

void main() {
  var repository = Repository();
  runApp(RedditVideoApp(
    repository: repository,
    navigation: Navigation(repository),
  ));
}

class RedditVideoApp extends StatelessWidget {
  final Repository repository;
  final Navigation navigation;

  RedditVideoApp({
    this.repository,
    this.navigation,
  });

  @override
  Widget build(BuildContext context) {
    var theme = ThemeData(
      primarySwatch: Colors.red,
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: HomePage(
        title: 'Reddit TV',
        loadVideos: repository.loadVideos,
        navigation: navigation,
      ),
    );
  }
}
