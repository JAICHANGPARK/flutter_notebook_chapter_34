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
        child: Column(
          children: [
            Container(
              height: 64,
              color: Colors.blue,
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          top: 0,
                          child: Container(
                            height: 24,
                            color: Colors.black,
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
    );
  }
}
