import 'package:meta/meta.dart';

import 'remote/feeds.dart';

export 'remote/video_feed.dart';

class Repository {
  final Feeds feeds;

  Repository({Repository feeds}) : feeds = feeds == null ? Feeds() : feeds;

  Future<Listing> loadVideos({Listing after}) => feeds.loadVideo(after: after);

  Future<Listing> loadComments(Post post) =>
      feeds.loadComments(post);
}
