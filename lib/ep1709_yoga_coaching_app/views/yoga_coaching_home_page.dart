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
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.face,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 52,
                color: Colors.blue,
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
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 32,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Sign in",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 32,
                                  backgroundColor: Colors.black,
                                  foregroundColor: Colors.white,
                                  child: Text("or"),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Stack(),
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
