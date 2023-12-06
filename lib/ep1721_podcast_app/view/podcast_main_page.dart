import 'package:flutter/material.dart';

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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 48,
                child: Row(
                  children: [
                    Expanded(
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
                                  children: [],
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
