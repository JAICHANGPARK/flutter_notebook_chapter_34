import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(child: Container()),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(),
                    Column(
                      children: [
                        Text("Design house"),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.purpleAccent,
                            ),
                            Text('4.9'),
                            Text("(127)"),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Icon(Icons.chat_bubble_outline),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Lamp"),
                    Text("Posted 1 hr ago"),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.refresh,
                          ),
                          Text("Buy Online"),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
