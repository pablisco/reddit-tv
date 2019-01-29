import 'package:app/data/repository.dart';
import 'package:app/style/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// TODO: extract models outside of 'data'

class VideoEntry extends StatelessWidget {
  final Post _post;
  final Function(BuildContext context) openVideo;

  VideoEntry(this._post, this.openVideo);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: VideoPreview(_post.preview),
            ),
            onTap: () => openVideo(context),
          ),
          Padding(
            child: Text(
              _post.title,
              style: styles.text.title,
            ),
            padding: EdgeInsets.all(16.0),
          ),
          VideoActionBar(
            post: _post,
            actions: [
              VideoAction.Ups,
              VideoAction.Comments,
              VideoAction.Share,
            ],
          ),
        ],
      );
}

class VideoAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final Post _post;

  VideoAppBar(this._post, double width)
      : preferredSize = Size(width, width * 16 / 9);

  factory VideoAppBar.from(Post post, BuildContext context) =>
      VideoAppBar(post, MediaQuery.of(context).size.width);

  @override
  Widget build(BuildContext context) => SafeArea(
        top: true,
        child: Stack(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: VideoPreview(_post.preview),
            ),
            AppBarShadow(),
            BackButton(
              color: Colors.white,
            ),
          ],
        ),
      );
}

class AppBarShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        height: kToolbarHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black.withAlpha(128), Colors.transparent],
          ),
        ),
      );
}

class VideoPreview extends StatelessWidget {
  final Preview _preview;

  const VideoPreview(this._preview, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Hero(
        tag: _preview,
        child: material.Image.network(
          _preview.bestPathFor(width: MediaQuery.of(context).size.width)?.url,
          fit: BoxFit.fitWidth,
        ),
      );
}

enum VideoAction { Share, Comments, Ups, OpenExternal }

class VideoActionBar extends StatelessWidget {
  final List<VideoAction> actions;
  final Post post;
  final Function(VideoAction action) onSelected;

  const VideoActionBar(
      {Key key, @required this.actions, @required this.post, this.onSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: actions.map((action) {
          switch (action) {
            case VideoAction.Ups:
              return _upActionButton(post);
            case VideoAction.Comments:
              return _commentsActionButton(post);
            case VideoAction.Share:
              return _shareActionButton(post);
            case VideoAction.OpenExternal:
              return _openExternalActionButton(post);
          }
        }).toList(),
      );

  onPressed(VideoAction action) => () {
        if (onSelected != null) {
          onSelected(action);
        }
      };

  Widget _shareActionButton(Post item) => FlatButton.icon(
        onPressed: onPressed(VideoAction.Share),
        icon: Icon(MdiIcons.share),
        label: Text('Share'),
      );

  Widget _commentsActionButton(Post item) => FlatButton.icon(
        onPressed: onPressed(VideoAction.Comments),
        icon: Icon(MdiIcons.messageReply),
        label: Text(
          item.commentCount.toString(),
        ),
      );

  Widget _upActionButton(Post item) => FlatButton.icon(
        onPressed: onPressed(VideoAction.Ups),
        icon: Icon(MdiIcons.arrowUpBold),
        label: Text(
          item.ups.toString(),
        ),
      );

  Widget _openExternalActionButton(Post item) => FlatButton.icon(
        onPressed: onPressed(VideoAction.OpenExternal),
        icon: Icon(MdiIcons.openInNew),
        label: Text(
          'Open',
        ),
      );
}
