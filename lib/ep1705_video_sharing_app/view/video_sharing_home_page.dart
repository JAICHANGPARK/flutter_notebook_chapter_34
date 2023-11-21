import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class VideoSharingHomePage extends StatefulWidget {
  const VideoSharingHomePage({super.key});

  @override
  State<VideoSharingHomePage> createState() => _VideoSharingHomePageState();
}

class _VideoSharingHomePageState extends State<VideoSharingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.2),
                    child: const Icon(Icons.search),
                    foregroundColor: Colors.white,
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Video",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.2),
                    foregroundColor: Colors.white,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: "Your ",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      TextSpan(
                        text: "favourites",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      )
                    ])),
                    Gap(16),
                    Container(
                      height: 100,
                      color: Colors.pinkAccent,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: CircleAvatar(
                              radius: 48,
                              backgroundColor: Colors.blue,
                            ),
                          );
                        },
                      ),
                    ),
                    Gap(16),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                text: "Creators ",
                                style: TextStyle(color: Colors.white, fontSize: 16),
                              ),
                              TextSpan(
                                text: "on live",
                                style: TextStyle(color: Colors.grey, fontSize: 16),
                              )
                            ])),
                            Gap(8),
                            Container(
                              height: 400,
                              child: Placeholder(),
                            ),
                            Gap(16),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Creators ",
                                    style: TextStyle(color: Colors.white, fontSize: 16),
                                  ),
                                  TextSpan(
                                    text: "on live",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Gap(8),
                            Container(
                              height: 200,
                              child: Placeholder(),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
