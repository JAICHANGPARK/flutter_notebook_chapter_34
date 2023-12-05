import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 240,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            Gap(16),
            Row(
              children: [
                CircleAvatar(),
                Gap(16),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Human's shop"),
                    Row(
                      children: [
                        ...List.generate(
                          5,
                          (index) => Icon(
                            Icons.star,
                            size: 16,
                          ),
                        ),
                        Text(
                          "4.7",
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                  ],
                )),
                CircleAvatar(
                  child: Icon(Icons.keyboard_arrow_right),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
