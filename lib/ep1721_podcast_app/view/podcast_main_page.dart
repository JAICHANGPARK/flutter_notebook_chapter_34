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
      backgroundColor: Color.fromRGBO(229, 227, 221, 1),
      body: SafeArea(
        child: Column(
          children: [
            Gap(16),
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
                                    height: 24,
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
                                    CircleAvatar(
                                      radius: 24,
                                      backgroundColor: Colors.black,
                                    ),
                                    Gap(5),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(32),
                                        ),
                                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                                        child: GridView.builder(
                                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 8, crossAxisSpacing: 2, mainAxisSpacing: 2),
                                          itemBuilder: (context, index) {
                                            return Container(
                                              color: Colors.white,
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
                          icon: Icon(Icons.keyboard_arrow_down),
                        )
                      ],
                    )),
                    Expanded(
                      flex: 4,
                        child: Row(
                      children: [
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search),
                        )
                      ],
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
