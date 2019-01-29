import 'package:app/data/repository.dart';
import 'package:app/navigation.dart';
import 'package:app/style/styles.dart';
import 'package:app/video/video_entry.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final Navigation navigation;
  final Future<Listing> Function() loadVideos;
  final String title;

  HomePage({
    Key key,
    this.title,
    @required this.loadVideos,
    @required this.navigation,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Listing content;

  List<Post> posts;

  @override
  Widget build(BuildContext context) {
    if (content == null) {
      widget.loadVideos().then((listing) => setState(() {
            content = listing;
            posts = content.children.whereType<Post>().toList();
          }));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: contentWidget(),
    );
  }

  Widget contentWidget() {
    if (content == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      return RefreshIndicator(
          child: ListView.separated(
            separatorBuilder: (_, index) => Divider(
                  height: 16,
                  color: Colors.transparent,
                ),
            itemCount: posts.length,
            itemBuilder: (_, index) => _videoEntry(
                  posts[index],
                  'video_entry_$index',
                ),
          ),
          onRefresh: () {});
    }
  }

  _videoEntry(Post post, String tag) => VideoEntry(
        post,
        _gotoVideo(post, tag),
      );

  _gotoVideo(Post post, String tag) => (context) {
        widget.navigation.gotToVideo(context, post, tag);
      };
}
