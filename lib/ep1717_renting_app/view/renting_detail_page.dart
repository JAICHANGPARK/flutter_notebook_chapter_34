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
            height: 240,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          Row(
            children: [
              CircleAvatar(),
              Expanded(
                  child: Column(
                children: [
                  Text("Human's shop"),
                  Row(
                    children: [
                      ...List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                        ),
                      ),
                    ],
                  )
                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}
