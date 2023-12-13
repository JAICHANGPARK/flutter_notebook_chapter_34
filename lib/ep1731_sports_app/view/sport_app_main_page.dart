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
                  Divider(),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
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
                      ))
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
