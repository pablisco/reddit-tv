import 'package:app/data/repository.dart';
import 'package:app/video/page.dart';
import 'package:flutter/material.dart';

class Navigation {
  final Repository repository;

  Navigation(this.repository);

  gotToVideo(BuildContext context, Post post, String tag) {
    _goto(context, () => VideoPage(post, loadComments : repository.loadComments));
  }

  _goto(BuildContext context, Widget createPage()) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => createPage(),
      ),
    );
  }
}
