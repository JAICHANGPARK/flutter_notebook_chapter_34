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
      backgroundColor: Colors.white,
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
                          Gap(8),
                          Container(
                            height: 320,
                            color: Colors.blue,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 320,
                                  decoration: BoxDecoration(color: Colors.white),
                                  child: Column(
                                    children: [],
                                  ),
                                );
                              },
                            ),
                          ),
                          Gap(24),
                          const Text(
                            "Discover new places",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Gap(8),
                          Container(
                            height: 320,
                            color: Colors.blue,
                            child: ListView(
                              children: [],
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
