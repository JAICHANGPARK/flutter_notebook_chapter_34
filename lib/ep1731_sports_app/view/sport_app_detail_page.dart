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
        children: [
          Container(
            height: 200,
            color: Colors.blue,
          ),
          Text("Yoga with Sarah",style: TextStyle(
            color: Colors.white
          ),),
          Row(
            children: [],
          ),
          Divider(),
        ],
      ),
    );
  }
}
