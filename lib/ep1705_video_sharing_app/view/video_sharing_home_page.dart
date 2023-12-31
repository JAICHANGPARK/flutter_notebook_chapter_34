import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_34/ep1705_video_sharing_app/view/video_streaming_page.dart';
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
                    SizedBox(
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
                            SizedBox(
                              height: 360,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              VideoSharingLivePage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: 240,
                                      padding: const EdgeInsets.all(16),
                                      margin: const EdgeInsets.only(right: 12),
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey,
                                        borderRadius: BorderRadius.circular(16),
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2022/04/22/19/10/palms-7150464_1280.jpg",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.redAccent,
                                                  borderRadius:
                                                      BorderRadius.circular(32),
                                                ),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 16,
                                                  vertical: 4,
                                                ),
                                                child: const Text(
                                                  "LIVE",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              const Text(
                                                "86.4K",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const Spacer(),
                                          const Text(
                                            "FLUTTER\nDEVELOPMENT",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 24,
                                            ),
                                          ),
                                          const Gap(8),
                                          const Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 12,
                                              ),
                                              Gap(8),
                                              Text("Dream"),
                                              Gap(8),
                                              Text("2m")
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            const Gap(16),
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
                            SizedBox(
                                height: 200,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 10,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      width: 300,
                                      margin: const EdgeInsets.only(right: 16),
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      padding: const EdgeInsets.all(16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.white.withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 4),
                                            child: const Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(
                                                    Icons.access_time_outlined),
                                                Gap(6),
                                                Text("0:24"),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ))
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
