import 'package:flutter/material.dart';

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
        actions: [
          Text("MARK AS DONE"),
          Icon(Icons.done_all),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
