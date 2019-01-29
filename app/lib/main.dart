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
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: HomePage(
          title: 'Reddit TV',
          loadVideos: repository.loadVideos,
          navigation: navigation,
        ),
      );
}
