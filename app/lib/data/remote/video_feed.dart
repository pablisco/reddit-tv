import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:meta/meta.dart';

part 'video_feed.g.dart';

@BuiltValue()
abstract class Listing implements Built<Listing, ListingBuilder> {
  BuiltList<Thing> get children;

  @nullable
  String get after;

  factory Listing({
    @required List<Thing> children,
    @required String after,
  }) =>
      _$Listing._(children: BuiltList(children), after: after);

  factory Listing.fromJson(Map<String, dynamic> json) => Listing(
        children: (json['data']['children'] as List)
            .map((it) => Thing.fromJson(it as Map<String, dynamic>))
            .toList(),
        after: json['after'],
      );

  static List<Listing> fromJsonItems(List<Map<String, dynamic>> json) =>
      json.map((it) => Listing.fromJson(it)).toList();

  Listing._();
}

abstract class Thing {
  factory Thing.fromJson(Map<String, dynamic> json) {
    switch (json['kind']) {
      case 't3':
        return Post.fromJson(json['data']);
      case 't1':
        return Comment.fromJson(json['data']);
      default:
        return Unknown();
    }
  }

  Thing._();
}

@BuiltValue()
abstract class Comment extends Thing implements Built<Comment, CommentBuilder> {
  String get body;

  String get htmlBody;

  String get authorName;

  factory Comment({
    @required String body,
    @required String htmlBody,
    @required String authorName,
  }) =>
      _$Comment._(
        body: body,
        htmlBody: htmlBody,
        authorName: authorName,
      );

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        body: json['body'],
        htmlBody: json['body_html'],
        authorName: json['author'],
      );

  Comment._() : super._();
}

@BuiltValue()
abstract class Post extends Thing implements Built<Post, PostBuilder> {
  String get title;

  Preview get preview;

  int get ups;

  int get commentCount;

  String get permalink;

  factory Post({
    @required String title,
    @required Preview preview,
    @required int ups,
    @required int commentCount,
    @required String permalink,
  }) =>
      _$Post._(
        title: title,
        preview: preview,
        ups: ups,
        commentCount: commentCount,
        permalink: permalink,
      );

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        title: json['title'],
        preview: Preview.fromJson(json['preview'] as Map<String, dynamic>),
        ups: json['ups'],
        commentCount: json['num_comments'],
        permalink: json['permalink'],
      );

  Post._() : super._();
}

@BuiltValue()
abstract class Unknown extends Thing implements Built<Unknown, UnknownBuilder> {
  factory Unknown() => _$Unknown._();

  Unknown._() : super._();
}

@BuiltValue()
abstract class Preview implements Built<Preview, PreviewBuilder> {
  BuiltList<Image> get images;

  factory Preview(List<Image> images) => _$Preview._(images: BuiltList(images));

  factory Preview.fromJson(Map<String, dynamic> json) => Preview(
        (json['images'] as List)
            .map((it) => Image.fromJson(it as Map<String, dynamic>))
            .toList(),
      );

  Preview._();

  @nullable
  ImagePath bestPathFor({num width}) {
    List<ImagePath> paths = images.expand((image) => image.all).toList()
      ..sort((a, b) => a.width.compareTo(b.width));
    return (images.expand((image) => image.all).toList()
          ..sort((a, b) => a.width.compareTo(b.width)))
        .firstWhere((it) => it.width >= width, orElse: () => paths.last);
  }
}

@BuiltValue()
abstract class Image implements Built<Image, ImageBuilder> {
  ImagePath get source;

  BuiltList<ImagePath> get resolutions;

  List<ImagePath> get all => [source]..addAll(resolutions);

  factory Image({
    @required ImagePath source,
    @required List<ImagePath> resolutions,
  }) =>
      _$Image._(source: source, resolutions: BuiltList(resolutions));

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        source: ImagePath.fromJson(json['source'] as Map<String, dynamic>),
        resolutions: (json['resolutions'] as List)
            .map((it) => ImagePath.fromJson(it as Map<String, dynamic>))
            .toList(),
      );

  Image._();
}

@BuiltValue()
abstract class ImagePath implements Built<ImagePath, ImagePathBuilder> {
  String get url;

  int get width;

  int get height;

  factory ImagePath({
    @required String url,
    @required int width,
    @required int height,
  }) =>
      _$ImagePath._(
        url: url,
        width: width,
        height: height,
      );

  factory ImagePath.fromJson(Map<String, dynamic> json) => ImagePath(
        url: _removeHtmlEncoding(json['url']),
        width: json['width'],
        height: json['height'],
      );

  ImagePath._();
}

_removeHtmlEncoding(String text) => text.replaceAll('&amp;', '&');
