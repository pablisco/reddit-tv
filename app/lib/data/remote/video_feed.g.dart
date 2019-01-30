// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_feed.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Listing extends Listing {
  @override
  final BuiltList<Thing> children;
  @override
  final String after;

  factory _$Listing([void updates(ListingBuilder b)]) =>
      (new ListingBuilder()..update(updates)).build();

  _$Listing._({this.children, this.after}) : super._() {
    if (children == null) {
      throw new BuiltValueNullFieldError('Listing', 'children');
    }
  }

  @override
  Listing rebuild(void updates(ListingBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ListingBuilder toBuilder() => new ListingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Listing &&
        children == other.children &&
        after == other.after;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, children.hashCode), after.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Listing')
          ..add('children', children)
          ..add('after', after))
        .toString();
  }
}

class ListingBuilder implements Builder<Listing, ListingBuilder> {
  _$Listing _$v;

  ListBuilder<Thing> _children;
  ListBuilder<Thing> get children =>
      _$this._children ??= new ListBuilder<Thing>();
  set children(ListBuilder<Thing> children) => _$this._children = children;

  String _after;
  String get after => _$this._after;
  set after(String after) => _$this._after = after;

  ListingBuilder();

  ListingBuilder get _$this {
    if (_$v != null) {
      _children = _$v.children?.toBuilder();
      _after = _$v.after;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Listing other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Listing;
  }

  @override
  void update(void updates(ListingBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Listing build() {
    _$Listing _$result;
    try {
      _$result =
          _$v ?? new _$Listing._(children: children.build(), after: after);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'children';
        children.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Listing', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Comment extends Comment {
  @override
  final String body;
  @override
  final String htmlBody;
  @override
  final String authorName;

  factory _$Comment([void updates(CommentBuilder b)]) =>
      (new CommentBuilder()..update(updates)).build();

  _$Comment._({this.body, this.htmlBody, this.authorName}) : super._() {
    if (body == null) {
      throw new BuiltValueNullFieldError('Comment', 'body');
    }
    if (htmlBody == null) {
      throw new BuiltValueNullFieldError('Comment', 'htmlBody');
    }
    if (authorName == null) {
      throw new BuiltValueNullFieldError('Comment', 'authorName');
    }
  }

  @override
  Comment rebuild(void updates(CommentBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentBuilder toBuilder() => new CommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment &&
        body == other.body &&
        htmlBody == other.htmlBody &&
        authorName == other.authorName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, body.hashCode), htmlBody.hashCode), authorName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Comment')
          ..add('body', body)
          ..add('htmlBody', htmlBody)
          ..add('authorName', authorName))
        .toString();
  }
}

class CommentBuilder implements Builder<Comment, CommentBuilder> {
  _$Comment _$v;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  String _htmlBody;
  String get htmlBody => _$this._htmlBody;
  set htmlBody(String htmlBody) => _$this._htmlBody = htmlBody;

  String _authorName;
  String get authorName => _$this._authorName;
  set authorName(String authorName) => _$this._authorName = authorName;

  CommentBuilder();

  CommentBuilder get _$this {
    if (_$v != null) {
      _body = _$v.body;
      _htmlBody = _$v.htmlBody;
      _authorName = _$v.authorName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Comment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Comment;
  }

  @override
  void update(void updates(CommentBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Comment build() {
    final _$result = _$v ??
        new _$Comment._(body: body, htmlBody: htmlBody, authorName: authorName);
    replace(_$result);
    return _$result;
  }
}

class _$Post extends Post {
  @override
  final String title;
  @override
  final Preview preview;
  @override
  final int ups;
  @override
  final int commentCount;
  @override
  final String permalink;
  @override
  final String url;
  @override
  final String mediaType;

  factory _$Post([void updates(PostBuilder b)]) =>
      (new PostBuilder()..update(updates)).build();

  _$Post._(
      {this.title,
      this.preview,
      this.ups,
      this.commentCount,
      this.permalink,
      this.url,
      this.mediaType})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('Post', 'title');
    }
    if (preview == null) {
      throw new BuiltValueNullFieldError('Post', 'preview');
    }
    if (ups == null) {
      throw new BuiltValueNullFieldError('Post', 'ups');
    }
    if (commentCount == null) {
      throw new BuiltValueNullFieldError('Post', 'commentCount');
    }
    if (permalink == null) {
      throw new BuiltValueNullFieldError('Post', 'permalink');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Post', 'url');
    }
    if (mediaType == null) {
      throw new BuiltValueNullFieldError('Post', 'mediaType');
    }
  }

  @override
  Post rebuild(void updates(PostBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PostBuilder toBuilder() => new PostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Post &&
        title == other.title &&
        preview == other.preview &&
        ups == other.ups &&
        commentCount == other.commentCount &&
        permalink == other.permalink &&
        url == other.url &&
        mediaType == other.mediaType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, title.hashCode), preview.hashCode),
                        ups.hashCode),
                    commentCount.hashCode),
                permalink.hashCode),
            url.hashCode),
        mediaType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Post')
          ..add('title', title)
          ..add('preview', preview)
          ..add('ups', ups)
          ..add('commentCount', commentCount)
          ..add('permalink', permalink)
          ..add('url', url)
          ..add('mediaType', mediaType))
        .toString();
  }
}

class PostBuilder implements Builder<Post, PostBuilder> {
  _$Post _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  PreviewBuilder _preview;
  PreviewBuilder get preview => _$this._preview ??= new PreviewBuilder();
  set preview(PreviewBuilder preview) => _$this._preview = preview;

  int _ups;
  int get ups => _$this._ups;
  set ups(int ups) => _$this._ups = ups;

  int _commentCount;
  int get commentCount => _$this._commentCount;
  set commentCount(int commentCount) => _$this._commentCount = commentCount;

  String _permalink;
  String get permalink => _$this._permalink;
  set permalink(String permalink) => _$this._permalink = permalink;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _mediaType;
  String get mediaType => _$this._mediaType;
  set mediaType(String mediaType) => _$this._mediaType = mediaType;

  PostBuilder();

  PostBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _preview = _$v.preview?.toBuilder();
      _ups = _$v.ups;
      _commentCount = _$v.commentCount;
      _permalink = _$v.permalink;
      _url = _$v.url;
      _mediaType = _$v.mediaType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Post other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Post;
  }

  @override
  void update(void updates(PostBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Post build() {
    _$Post _$result;
    try {
      _$result = _$v ??
          new _$Post._(
              title: title,
              preview: preview.build(),
              ups: ups,
              commentCount: commentCount,
              permalink: permalink,
              url: url,
              mediaType: mediaType);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'preview';
        preview.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Post', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Unknown extends Unknown {
  factory _$Unknown([void updates(UnknownBuilder b)]) =>
      (new UnknownBuilder()..update(updates)).build();

  _$Unknown._() : super._();

  @override
  Unknown rebuild(void updates(UnknownBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UnknownBuilder toBuilder() => new UnknownBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Unknown;
  }

  @override
  int get hashCode {
    return 957476573;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('Unknown').toString();
  }
}

class UnknownBuilder implements Builder<Unknown, UnknownBuilder> {
  _$Unknown _$v;

  UnknownBuilder();

  @override
  void replace(Unknown other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Unknown;
  }

  @override
  void update(void updates(UnknownBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Unknown build() {
    final _$result = _$v ?? new _$Unknown._();
    replace(_$result);
    return _$result;
  }
}

class _$Preview extends Preview {
  @override
  final BuiltList<Image> images;

  factory _$Preview([void updates(PreviewBuilder b)]) =>
      (new PreviewBuilder()..update(updates)).build();

  _$Preview._({this.images}) : super._() {
    if (images == null) {
      throw new BuiltValueNullFieldError('Preview', 'images');
    }
  }

  @override
  Preview rebuild(void updates(PreviewBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PreviewBuilder toBuilder() => new PreviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Preview && images == other.images;
  }

  @override
  int get hashCode {
    return $jf($jc(0, images.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Preview')..add('images', images))
        .toString();
  }
}

class PreviewBuilder implements Builder<Preview, PreviewBuilder> {
  _$Preview _$v;

  ListBuilder<Image> _images;
  ListBuilder<Image> get images => _$this._images ??= new ListBuilder<Image>();
  set images(ListBuilder<Image> images) => _$this._images = images;

  PreviewBuilder();

  PreviewBuilder get _$this {
    if (_$v != null) {
      _images = _$v.images?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Preview other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Preview;
  }

  @override
  void update(void updates(PreviewBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Preview build() {
    _$Preview _$result;
    try {
      _$result = _$v ?? new _$Preview._(images: images.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'images';
        images.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Preview', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Image extends Image {
  @override
  final ImagePath source;
  @override
  final BuiltList<ImagePath> resolutions;

  factory _$Image([void updates(ImageBuilder b)]) =>
      (new ImageBuilder()..update(updates)).build();

  _$Image._({this.source, this.resolutions}) : super._() {
    if (source == null) {
      throw new BuiltValueNullFieldError('Image', 'source');
    }
    if (resolutions == null) {
      throw new BuiltValueNullFieldError('Image', 'resolutions');
    }
  }

  @override
  Image rebuild(void updates(ImageBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageBuilder toBuilder() => new ImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Image &&
        source == other.source &&
        resolutions == other.resolutions;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, source.hashCode), resolutions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Image')
          ..add('source', source)
          ..add('resolutions', resolutions))
        .toString();
  }
}

class ImageBuilder implements Builder<Image, ImageBuilder> {
  _$Image _$v;

  ImagePathBuilder _source;
  ImagePathBuilder get source => _$this._source ??= new ImagePathBuilder();
  set source(ImagePathBuilder source) => _$this._source = source;

  ListBuilder<ImagePath> _resolutions;
  ListBuilder<ImagePath> get resolutions =>
      _$this._resolutions ??= new ListBuilder<ImagePath>();
  set resolutions(ListBuilder<ImagePath> resolutions) =>
      _$this._resolutions = resolutions;

  ImageBuilder();

  ImageBuilder get _$this {
    if (_$v != null) {
      _source = _$v.source?.toBuilder();
      _resolutions = _$v.resolutions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Image other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Image;
  }

  @override
  void update(void updates(ImageBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Image build() {
    _$Image _$result;
    try {
      _$result = _$v ??
          new _$Image._(
              source: source.build(), resolutions: resolutions.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'source';
        source.build();
        _$failedField = 'resolutions';
        resolutions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Image', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ImagePath extends ImagePath {
  @override
  final String url;
  @override
  final int width;
  @override
  final int height;

  factory _$ImagePath([void updates(ImagePathBuilder b)]) =>
      (new ImagePathBuilder()..update(updates)).build();

  _$ImagePath._({this.url, this.width, this.height}) : super._() {
    if (url == null) {
      throw new BuiltValueNullFieldError('ImagePath', 'url');
    }
    if (width == null) {
      throw new BuiltValueNullFieldError('ImagePath', 'width');
    }
    if (height == null) {
      throw new BuiltValueNullFieldError('ImagePath', 'height');
    }
  }

  @override
  ImagePath rebuild(void updates(ImagePathBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ImagePathBuilder toBuilder() => new ImagePathBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImagePath &&
        url == other.url &&
        width == other.width &&
        height == other.height;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, url.hashCode), width.hashCode), height.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ImagePath')
          ..add('url', url)
          ..add('width', width)
          ..add('height', height))
        .toString();
  }
}

class ImagePathBuilder implements Builder<ImagePath, ImagePathBuilder> {
  _$ImagePath _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  int _width;
  int get width => _$this._width;
  set width(int width) => _$this._width = width;

  int _height;
  int get height => _$this._height;
  set height(int height) => _$this._height = height;

  ImagePathBuilder();

  ImagePathBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _width = _$v.width;
      _height = _$v.height;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImagePath other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ImagePath;
  }

  @override
  void update(void updates(ImagePathBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ImagePath build() {
    final _$result =
        _$v ?? new _$ImagePath._(url: url, width: width, height: height);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
