import 'package:flutter/material.dart';

class SportsAppMainPage extends StatefulWidget {
  const SportsAppMainPage({super.key});

  @override
  State<SportsAppMainPage> createState() => _SportsAppMainPageState();
}

class _SportsAppMainPageState extends State<SportsAppMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "PROGRESS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24
                      ),
                    )
                  ],
                )
              ],
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
