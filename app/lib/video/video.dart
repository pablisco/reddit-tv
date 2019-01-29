import 'package:built_value/built_value.dart';

part 'video.g.dart';

@BuiltValue()
abstract class Video implements Built<Video, VideoBuilder> {
  String get title;

  factory Video(String title) => _$Video._(title: title);

  Video._();
}

