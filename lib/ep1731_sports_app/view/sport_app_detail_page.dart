import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SportAppDetailPage extends StatefulWidget {
  const SportAppDetailPage({super.key});

  @override
  State<SportAppDetailPage> createState() => _SportAppDetailPageState();
}

class _SportAppDetailPageState extends State<SportAppDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.tealAccent,
        actions: [
          Text("MARK AS DONE"),
          Gap(4),
          Icon(Icons.done_all),
          Gap(12),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            color: Colors.blue,
          ),
          Gap(24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Yoga with Sarah",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Gap(8),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.teal[200],
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 2,
                      ),
                      child: Text(
                        "HUDDLE",
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.teal[200],
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 2,
                      ),
                      child: Text(
                        "HUDDLE",
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.teal[200],
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 2,
                      ),
                      child: Text(
                        "HUDDLE",
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(),
              ],
            ),
          ),
          Container(
            height: 62,
            child: Placeholder(),
          ),
          Gap(16),
          Container(
            height: 72,
            child: Placeholder(),
          ),
          Gap(16),
          Container(
            height: 200,
            child: Placeholder(),
          ),
        ],
      ),
    );
  }
}
