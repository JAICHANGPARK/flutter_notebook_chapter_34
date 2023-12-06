import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_34/ep1721_podcast_app/view/podcast_main_page.dart';

void main() {
  runApp(PodCastApp());
}

class PodCastApp extends StatelessWidget {
  const PodCastApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => PodcastMainPage(),
      },
    );
  }
}
