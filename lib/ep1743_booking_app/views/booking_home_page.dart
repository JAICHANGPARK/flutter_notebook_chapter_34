import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookingHomePage extends StatefulWidget {
  const BookingHomePage({super.key});

  @override
  State<BookingHomePage> createState() => _BookingHomePageState();
}

class _BookingHomePageState extends State<BookingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(42),
                      bottomLeft: Radius.circular(42),
                    ),
                    color: Colors.black,
                    image: DecorationImage(
                      image: const NetworkImage(
                        "https://cdn.pixabay.com/photo/2023/08/25/16/13/skyscraper-8213318_1280.jpg",
                      ),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4),
                        BlendMode.darken,
                      ),
                    ),
                  ),
                  padding: const EdgeInsets.only(
                    top: 64,
                    left: 24,
                    right: 24,
                    bottom: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.location_searching,
                            color: Colors.white,
                          ),
                          Text(
                            "Unknown",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.account_circle_outlined,
                            color: Colors.white,
                          )
                        ],
                      ),
                      const Gap(24),
                      const Text(
                        "Hey, Dream! Tell us where you want to go",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      const Gap(24),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(32),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(32)),
                            child: const TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.search),
                                hintText: "Search places",
                                helperText: "Date range Number of Guests",
                                hintStyle: TextStyle(color: Colors.white),
                                helperStyle: TextStyle(color: Colors.white),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Gap(16),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "The most relevant",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          const Gap(8),
                          Container(
                            height: 320,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 320,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  margin: const EdgeInsets.only(right: 12),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.circular(16),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2017/04/10/22/28/residence-2219972_1280.jpg"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Row(
                                              children: [
                                                Text(
                                                  "Tiny home in South Korea",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                Spacer(),
                                                Icon(
                                                  Icons.star,
                                                  size: 20,
                                                ),
                                                Text(
                                                  "4.96 (217)",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Gap(4),
                                            const Text("4 guest 2 badrooms 2 bads 1 bathroom"),
                                            Gap(4),
                                            const Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "\$117",
                                                    style: TextStyle(
                                                      decoration: TextDecoration.lineThrough,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: " \$91 night",
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "\$273 total ",
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          const Gap(24),
                          const Text(
                            "Discover new places",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          const Gap(8),
                          Container(
                            height: 200,
                            color: Colors.blue,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 240,
                                  margin: EdgeInsets.only(right: 16),
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(16)
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 14,
            child: Container(
              height: 80,
              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(42)),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: BottomNavigationBar(
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.grey,
                backgroundColor: Colors.black,
                type: BottomNavigationBarType.fixed,
                items: [
                  const BottomNavigationBarItem(icon: Icon(Icons.explore_outlined), label: "Discover"),
                  const BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Favorites"),
                  const BottomNavigationBarItem(icon: Icon(Icons.collections_bookmark), label: "Bookings"),
                  const BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: "Messages"),
                ],
              ),
            ),
            //   child: NavigationBar(
            //     height: 72,
            //     destinations: [
            //       NavigationDestination(
            //         icon: Icon(Icons.explore_outlined),
            //         label: "Discover",
            //       ),
            //       NavigationDestination(
            //         icon: Icon(Icons.explore_outlined),
            //         label: "Discover",
            //       )
            //     ],
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
