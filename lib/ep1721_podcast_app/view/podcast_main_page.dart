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
          children: [
            const Gap(16),
            Padding(
              padding: const EdgeInsets.all(16.0),
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
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "My\nPodcasts",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 82),
              ),
            ),
            Expanded(child: Placeholder()),
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
