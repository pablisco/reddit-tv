// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Video extends Video {
  @override
  final String title;

  factory _$Video([void updates(VideoBuilder b)]) =>
      (new VideoBuilder()..update(updates)).build();

  _$Video._({this.title}) : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('Video', 'title');
    }
  }

  @override
  Video rebuild(void updates(VideoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoBuilder toBuilder() => new VideoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Video && title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(0, title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Video')..add('title', title))
        .toString();
  }
}

class VideoBuilder implements Builder<Video, VideoBuilder> {
  _$Video _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  VideoBuilder();

  VideoBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Video other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Video;
  }

  @override
  void update(void updates(VideoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Video build() {
    final _$result = _$v ?? new _$Video._(title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
