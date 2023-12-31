import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_34/ep1731_sports_app/view/sport_app_detail_page.dart';
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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return SportAppDetailPage();
                          },
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 72,
                          width: 170,
                          color: Colors.blue,
                        ),
                        Gap(16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Core with Sarah",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Gap(8),
                              Text(
                                "20 MIN",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.check,
                          color: Colors.tealAccent,
                        ),
                      ],
                    ),
                  ),
                  Gap(5),
                  Row(
                    children: [
                      Container(
                        height: 72,
                        width: 170,
                        color: Colors.blue,
                      ),
                      Gap(16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Core with Sarah",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Gap(8),
                            Text(
                              "20 MIN",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 24,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 170,
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(
                    .6,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.home),
                        color: Colors.tealAccent,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                        // color: Colors.grey,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.timer,
                          color: Colors.grey,
                        ),
                      ),
                    )),
                    Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                              // color: Colors.grey,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Center(
                              child: Badge(
                                child: Icon(
                                  Icons.chat,
                                  color: Colors.grey,
                                ),
                              ),
                            ))),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
