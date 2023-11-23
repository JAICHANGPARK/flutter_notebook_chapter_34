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
            top: 24,
            bottom: 0,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(),
                      const Gap(16),
                      const Column(
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
                      const Gap(16),
                      Container(
                        decoration: const ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.deepOrange,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        child: const Text(
                          "Follow",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        decoration: ShapeDecoration(
                          shape: const StadiumBorder(),
                          color: Colors.white.withOpacity(0.2),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.visibility,
                              color: Colors.white,
                              size: 16,
                            ),
                            Gap(8),
                            Text(
                              "159K",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  Row(
                    children: [
                      CircleAvatar(),
                      Gap(8),
                      Chip(
                        avatar: CircleAvatar(),
                        label: Text("Dream Donated"),
                        backgroundColor: Colors.white.withOpacity(0.78),
                        shape: StadiumBorder(),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return const Placeholder();
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(32),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: "Message",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      const Gap(16),
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.white.withOpacity(0.2),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                          ),
                          color: Colors.redAccent,
                        ),
                      ),
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.white.withOpacity(0.2),
                        foregroundColor: Colors.grey,
                        child: Icon(
                          Icons.videocam_rounded,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
