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
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/08/18/20/05/light-bulbs-1603766_1280.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                )),
            padding: EdgeInsets.all(16),
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
                      decoration: BoxDecoration(color: Colors.tealAccent, borderRadius: BorderRadius.circular(32)),
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
                ),
                Text("Description"),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
                Container(
                  decoration: BoxDecoration(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
