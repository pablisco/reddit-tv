import 'package:app/data/remote/video_feed.dart';
import 'package:app/video/video_entry.dart';
import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  final Future<Listing> Function(Post post) loadComments;

  final Post _post;

  VideoPage(
    this._post, {
    Key key,
    @required this.loadComments,
  }) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  Listing content;

  List<Comment> comments;

  @override
  Widget build(BuildContext context) {
    if (content == null) {
      widget
          .loadComments(widget._post)
          .then((listing) => setState(() {
                content = listing;
                comments = content.children.whereType<Comment>().toList();
              }))
          .catchError((error) {
        debugPrint("error: $error");
      });
    }
    return Scaffold(
      appBar: VideoAppBar.from(widget._post, context),
      body: Column(
        children: [
          VideoActionBar(
            post: widget._post,
            actions: [
              VideoAction.Ups,
              VideoAction.Share,
              VideoAction.OpenExternal
            ],
          ),
          contentWidget(),
        ],
      ),
    );
  }

  Widget contentWidget() {
    if (content == null) {
      return Expanded(
        child: Center(child: CircularProgressIndicator()),
      );
    } else {
      return Expanded(
        child: ListView.separated(
          separatorBuilder: (_, index) => Divider(
                height: 16,
                color: Colors.transparent,
              ),
          itemCount: comments.length,
          itemBuilder: (_, index) => _commentEntry(
                comments[index],
              ),
        ),
      );
    }
  }

  _commentEntry(Comment comment) => ListTile(
        title: Text(comment.body),
        subtitle: Text(comment.authorName),
      );
}
