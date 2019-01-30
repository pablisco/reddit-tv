import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class YoutubePlayer extends StatefulWidget {
  final String videoId;

  factory YoutubePlayer.fromUrl(String url) {
    var uri = Uri.parse(url);
    return YoutubePlayer(uri.queryParameters['v'] ?? uri.pathSegments.last);
  }

  const YoutubePlayer(this.videoId, {Key key}) : super(key: key);

  @override
  _YoutubePlayerState createState() => _YoutubePlayerState();
}

class _YoutubePlayerState extends State<YoutubePlayer> {
  @override
  Widget build(BuildContext context) => AspectRatio(
        aspectRatio: 16 / 9,
        child: WebView(
          onWebViewCreated: (controller) {
            rootBundle
                .loadString('assets/raw/youtube_player.html')
                .then((html) => html
                    .replaceFirst("'injectedPlayerVars'", _playerOptions())
                    .replaceFirst("%videoId%", widget.videoId))
                .then(
                  (html) => controller.loadUrl(
                      Uri.dataFromString(html, mimeType: 'text/html')
                          .toString()),
                )
                .catchError((error) => throw error);
          },
          initialUrl: '',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      );
}

String _playerOptions({
  int autoplay: 0,
  int controls: 0,
  int enableJsApi: 1,
  int fs: 1,
  String origin: "https://www.youtube.com",
  int rel: 0,
  int showInfo: 0,
  int ivLoadPolicy: 3,
  int modestBranding: 1,
}) =>
    JsonEncoder().convert({
      "autoplay": autoplay,
      "controls": controls,
      "enablejsapi": enableJsApi,
      "fs": fs,
      "origin": origin,
      "rel": rel,
      "showinfo": showInfo,
      "iv_load_policy": ivLoadPolicy,
      "modestbranding": modestBranding,
    });
