import 'package:flutter/material.dart';

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
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(32),
                      bottomLeft: Radius.circular(32),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [],
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
              height: 72,
              color: Colors.black,
              child: NavigationBar(
                height: 72,
                destinations: [
                  NavigationDestination(
                    icon: Icon(Icons.explore_outlined),
                    label: "Discover",
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.explore_outlined),
                    label: "Discover",
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
