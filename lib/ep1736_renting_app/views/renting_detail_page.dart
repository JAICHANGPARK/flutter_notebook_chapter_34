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
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2019/10/03/11/14/camp-4522970_1280.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(),
                      Expanded(
                        child: Column(
                          children: [
                            Text("Dream Walker",
                              style: TextStyle(
                                color: Colors.white,
                              ),),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orangeAccent,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orangeAccent,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orangeAccent,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orangeAccent,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orangeAccent,
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
