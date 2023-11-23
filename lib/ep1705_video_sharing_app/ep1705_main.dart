import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_34/ep1705_video_sharing_app/view/video_sharing_home_page.dart';

void main() {
  runApp(const VideoSharingApp());
}

class VideoSharingApp extends StatelessWidget {
  const VideoSharingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: VideoSharingHomePage(),
    );
  }
}
