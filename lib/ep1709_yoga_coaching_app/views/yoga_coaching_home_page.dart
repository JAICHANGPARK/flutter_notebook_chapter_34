import 'package:flutter/material.dart';

class YogaCoachingHomePage extends StatefulWidget {
  const YogaCoachingHomePage({super.key});

  @override
  State<YogaCoachingHomePage> createState() => _YogaCoachingHomePageState();
}

class _YogaCoachingHomePageState extends State<YogaCoachingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.face,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 52,
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Positioned(
                            left: 16,
                            right: 16,
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
                            right: 0,
                            bottom: 0,
                            top: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 32,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Sign in",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 54,
                                  width: 54,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                  ),
                                ),
                                // const CircleAvatar(
                                //   radius: 32,
                                //   backgroundColor: Colors.black,
                                //   foregroundColor: Colors.white,
                                //   child: Text("or"),
                                //
                                // ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          Positioned(
                            left: -8,
                            right: 8,
                            top: 0,
                            bottom: 0,
                            child: Center(
                              child: Container(
                                height: 24,
                                color: const Color(0xff7eb179),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16,
                            right: 0,
                            bottom: 0,
                            top: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xff7eb179),
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Search for a guru",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
