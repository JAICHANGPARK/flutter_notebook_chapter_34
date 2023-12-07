import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PodcastMainPage extends StatefulWidget {
  const PodcastMainPage({super.key});

  @override
  State<PodcastMainPage> createState() => _PodcastMainPageState();
}

class _PodcastMainPageState extends State<PodcastMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 227, 221, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: SizedBox(
                height: 48,
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 8,
                                  right: 8,
                                  top: 0,
                                  bottom: 0,
                                  child: Center(
                                    child: Container(
                                      height: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                  right: 0,
                                  child: Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 24,
                                        backgroundColor: Colors.black,
                                      ),
                                      const Gap(5),
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.circular(32),
                                          ),
                                          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                                          child: GridView.builder(
                                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 10,
                                              crossAxisSpacing: 2,
                                              mainAxisSpacing: 2,
                                            ),
                                            itemBuilder: (context, index) {
                                              return Container(
                                                color: index % 6 == 0 ? Colors.black : Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.keyboard_arrow_down),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.search),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Gap(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "My\nPodcasts",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 82,
                  height: 1.0,
                ),
              ),
            ),
            Gap(24),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 12),
                      width: 260,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.red,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.ac_unit,
                              ),
                              Icon(Icons.share)
                            ],
                          ),
                          Text("Music Tech"),
                          Text("A Flutterist Talk"),
                          Row(
                            children: [
                              Text("14:04"),
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.grey,
                                child: Icon(Icons.play_arrow),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Gap(48),
            Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400]!,
                      blurRadius: 8,
                      spreadRadius: 4,
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
