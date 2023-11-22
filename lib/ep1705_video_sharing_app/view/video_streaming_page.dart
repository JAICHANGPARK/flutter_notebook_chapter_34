import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
            child: Container(
              height: MediaQuery.sizeOf(context).height / 2,
              decoration: BoxDecoration(
                color: Colors.black,
                gradient: LinearGradient(colors: [
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.2),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
              ),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            top: 0,
            bottom: 0,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(),
                      Gap(16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Flutter Developer",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Flutter",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Gap(16),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        child: Text(
                          "Follow",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.visibility,
                            ),
                            Text("159K"),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
