import 'dart:convert';
import 'dart:io';

import 'package:app/data/remote/video_feed.dart';
import 'package:test/test.dart';

void main() {
  test('parses basic json', () {
    var videoFeed = File('test_resources/video_feed.json').readAsStringSync();
    Listing videos = Listing.fromJson(json.decode(videoFeed));
    expect(videos.children, [
      Post(title: 'Video number 1', preview: testPreview),
      Post(title: 'Video number 2', preview: testPreview),
      Post(title: 'Video number 3', preview: testPreview),
      Post(title: 'Video number 4', preview: testPreview),
      Unknown(),
    ]);
  });

  test('Preview best match returns highest image path', () {
    Preview preview = Preview([
      Image(source: ImagePath(url: "c", width: 300, height: 200), resolutions: [
        ImagePath(url: "b", width: 200, height: 200),
        ImagePath(url: "a", width: 100, height: 200),
      ])
    ]);

    expect(preview.bestPathFor(width: 50), "a");
    expect(preview.bestPathFor(width: 150), "b");
    expect(preview.bestPathFor(width: 250), "c");
    expect(preview.bestPathFor(width: 350), "c");
  });
}

Preview testPreview = Preview([
  Image(
      source: ImagePath(
          url:
              "https://external-preview.redd.it/4VlmoH-JKjNZ-zjfPj1nukq0J_RgGJacW7fiaPTWbuc.jpg?auto=webp&s=81f6e4779e9137830f4ab818aba4f81f168fe760",
          width: 480,
          height: 360
      ),
      resolutions: [
        ImagePath(
            url:
            "https://external-preview.redd.it/4VlmoH-JKjNZ-zjfPj1nukq0J_RgGJacW7fiaPTWbuc.jpg?width=108&crop=smart&auto=webp&s=1d5027baf2f383ecc714039d0a4877f76048364e",
            width: 108,
            height: 81
        ),
        ImagePath(
            url:
            "https://external-preview.redd.it/4VlmoH-JKjNZ-zjfPj1nukq0J_RgGJacW7fiaPTWbuc.jpg?width=216&crop=smart&auto=webp&s=7c0d6010e27ca0cef7f1fc3d4e6645736d17ad10",
            width: 216,
            height: 162
        ),
        ImagePath(
            url:
            "https://external-preview.redd.it/4VlmoH-JKjNZ-zjfPj1nukq0J_RgGJacW7fiaPTWbuc.jpg?width=320&crop=smart&auto=webp&s=9ff246f344082047b97d4318451b7d968a83dc3c",
            width: 320,
            height: 240
        ),
      ]
  ),
]);
