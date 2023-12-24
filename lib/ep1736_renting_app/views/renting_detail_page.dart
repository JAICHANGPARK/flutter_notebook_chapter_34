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
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new))
                            ],
                          )
                        ],
                      )
                    ],
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
                  Gap(16),
                  Row(
                    children: [
                      CircleAvatar(),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dream Walker",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
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
                            ),
                            Text("")
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border),
                      )
                    ],
                  ),
                  Gap(16),
                  const Text(
                    "2-4 Person Camping Tent",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(16),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "),
                  Gap(16),
                  Row(
                    children: [
                      Icon(Icons.location_on_rounded),
                      Text("Flutter World"),
                    ],
                  ),
                  Gap(16),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),

                    ),
                    child: Row(
                      children: [
                        Expanded(child: Column()),
                        VerticalDivider(),
                        Expanded(child: Column()),
                        VerticalDivider(),
                        Expanded(child: Column()),
                      ],
                    ),
                  ),
                  Gap(16),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(8)
                    ),

                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: Center(
                      child: Text("Lease"),
                    ),
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
