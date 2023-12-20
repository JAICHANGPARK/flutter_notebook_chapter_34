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
          const Text("MARK AS DONE"),
          const Gap(4),
          const Icon(Icons.done_all),
          const Gap(12),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            color: Colors.blue,
          ),
          const Gap(24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Yoga with Sarah",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const Gap(8),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.teal[200],
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 2,
                      ),
                      child: const Text(
                        "HUDDLE",
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const Gap(6),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.teal[200],
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 2,
                      ),
                      child: const Text(
                        "HUDDLE",
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const Gap(6),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.teal[200],
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 2,
                      ),
                      child: const Text(
                        "HUDDLE",
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(),
              ],
            ),
          ),
          Container(
            height: 62,
            child: const Row(
              children: [
                Column(
                  children: [
                    Text(
                      "AVG TIME",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text("25 MIN")
                  ],
                )
              ],
            ),
          ),
          const Gap(16),
          Container(
            height: 72,
            child: const Placeholder(),
          ),
          const Gap(16),
          Container(
            height: 200,
            child: const Placeholder(),
          ),
        ],
      ),
    );
  }
}
