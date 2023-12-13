import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SportsAppMainPage extends StatefulWidget {
  const SportsAppMainPage({super.key});

  @override
  State<SportsAppMainPage> createState() => _SportsAppMainPageState();
}

class _SportsAppMainPageState extends State<SportsAppMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            left: 16,
            right: 16,
            top: 24,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "PROGRESS",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 32,
                        ),
                      ),
                      CircleAvatar(),
                    ],
                  ),
                  Gap(8),
                  Divider(),
                  Gap(8),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "15,160",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Today's GOAL".toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Gap(4),
                          Text(
                            "6,000",
                            style: TextStyle(
                              color: Colors.tealAccent,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Divider(),
                  Container(
                    height: 300,
                    child: Placeholder(),
                  ),
                  Divider(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "STEPS",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "5,440",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.tealAccent,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "CALORIES",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "402",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.tealAccent,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "CALORIES",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "402",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.tealAccent,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(
                    height: 24,
                  ),
                  Text(
                    "TRAINING PLAN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ),
                  Text("TODAY"),
                  Row(
                    children: [
                      Container(
                        height: 54,
                        width: 200,
                        color: Colors.blue,
                      ),
                      Gap(16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Core with Sarah"),
                          Text("20 MIN"),
                        ],
                      ),
                      Icon(
                        Icons.check,
                        color: Colors.tealAccent,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 24,
            child: Container(),
          )
        ],
      ),
    );
  }
}
