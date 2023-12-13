import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SportsStartPage extends StatefulWidget {
  const SportsStartPage({super.key});

  @override
  State<SportsStartPage> createState() => _SportsStartPageState();
}

class _SportsStartPageState extends State<SportsStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Container()),
          Container(
              width: double.infinity,
              color: Colors.black,
              padding: EdgeInsets.symmetric(vertical: 42, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(24),
                  Text("YOUR FITNESS COACH"),
                  Gap(24),
                  Text(
                    "Welcome to Your Ultimate Training Companion",
                  ),
                  Gap(24),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.tealAccent,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "GET STARTED",
                        ),
                        Icon(
                          Icons.play_arrow,
                        )
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
