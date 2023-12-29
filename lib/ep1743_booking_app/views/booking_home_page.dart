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
                  height: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(42),
                      bottomLeft: Radius.circular(42),
                    ),
                    color: Colors.black,
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2023/08/25/16/13/skyscraper-8213318_1280.jpg",
                        ),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2),
                          BlendMode.darken,
                        )),
                  ),
                  padding: EdgeInsets.only(
                    top: 64,
                    left: 16,
                    right: 16,
                    bottom: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
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
                      Gap(24),
                      Text(
                        "Hey, Dream! Tell us where you want to go",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Gap(24),
                      ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                            decoration: BoxDecoration(),
                            child: TextField(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Gap(16),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text("The most relevant"),
                        Container(
                          height: 320,
                          color: Colors.blue,
                          child: ListView(
                            children: [],
                          ),
                        ),
                        Text("Discover new places"),
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
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: BottomNavigationBar(
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.grey,
                backgroundColor: Colors.black,
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.explore_outlined), label: "Discover"),
                  BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Favorites"),
                  BottomNavigationBarItem(icon: Icon(Icons.collections_bookmark), label: "Bookings"),
                  BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: "Messages"),
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
