import 'dart:convert';

import 'package:http/http.dart';

import 'video_feed.dart';

export 'video_feed.dart';

class Feeds {
  final String _authority;

  Feeds({String authority: "www.reddit.com"}) : _authority = authority;

  Future<Listing> loadVideo({Listing after}) async {
    final response = await get(Uri.https(
      _authority,
      '/r/videos.json',
      _listingAsParams(after),
    ));

    if (response?.statusCode == 200) {
      return Listing.fromJson(json.decode(response.body));
    } else {
      throw Exception();
    }
  }

  Future<Listing> loadComments(Post post) async {
    final response = await get(Uri.https(
      _authority,
      '${post.permalink}.json',
    ));

    if (response?.statusCode == 200) {
      return Listing.fromJsonItems((json.decode(response.body) as List)
          .map((it) => it as Map<String, dynamic>).toList()).skip(1).first;
    } else {
      throw Exception();
    }
  }

  Map<String, String> _listingAsParams(Listing listing) =>
      listing == null ? {} : {'after': listing.after};
}
