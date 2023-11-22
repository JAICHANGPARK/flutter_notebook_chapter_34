import 'package:flutter/material.dart';

class VideoSharingLivePage extends StatefulWidget {
  const VideoSharingLivePage({super.key});

  @override
  State<VideoSharingLivePage> createState() => _VideoSharingLivePageState();
}

class _VideoSharingLivePageState extends State<VideoSharingLivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://cdn.pixabay.com/photo/2021/03/02/01/07/cyberpunk-6061251_1280.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(),
          )
        ],
      ),
    );
  }
}
