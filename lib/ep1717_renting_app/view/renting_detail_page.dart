import 'package:flutter/material.dart';

class RentingDetailPage extends StatefulWidget {
  const RentingDetailPage({super.key});

  @override
  State<RentingDetailPage> createState() => _RentingDetailPageState();
}

class _RentingDetailPageState extends State<RentingDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Base Camp Tent"),
        actions: [
          CircleAvatar(
            child: Icon(Icons.favorite),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          
        ],
      ),
    );
  }
}
