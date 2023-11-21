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
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Your ",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          TextSpan(
                            text: "favourites",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    const Gap(16),
                    Container(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: CircleAvatar(
                              radius: 48,
                              backgroundColor: Colors.blue,
                              backgroundImage: NetworkImage(
                                "https://thispersondoesnotexist.com/",
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const Gap(16),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Creators ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
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
                            const Gap(8),
                            Container(
                                height: 360,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 10,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      width: 240,
                                      padding: EdgeInsets.all(16),
                                      margin: EdgeInsets.only(right: 12),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[100],
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.redAccent,
                                                  borderRadius: BorderRadius.circular(32),
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 16,
                                                  vertical: 4,
                                                ),
                                                child: Text(
                                                  "LIVE",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "86.4K",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                )),
                            const Gap(16),
                            const Text.rich(
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
                            const Gap(8),
                            Container(
                              height: 200,
                              child: const Placeholder(),
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
