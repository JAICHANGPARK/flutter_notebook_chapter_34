import 'package:flutter/material.dart';


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
              color: Colors.black,
              padding: EdgeInsets.symmetric(vertical: 42, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("YOUR FITNESS COACH"),
                  Text("Welcome to Your Ultimate Training Companion",)
                ],
              ))

        ],
      ),
    );
  }
}
