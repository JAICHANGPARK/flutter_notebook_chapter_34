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
                  height: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(42),
                      bottomLeft: Radius.circular(42),
                    ),
                    color: Colors.black
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                    Text("The most relevant"),
                      Container(
                        height: 320,
                        color: Colors.blue,
                        child: ListView(
                          children: [

                          ],
                        ),
                      ),
                      Text("Discover new places"),
                      Container(
                        height: 320,
                        color: Colors.blue,
                        child: ListView(
                          children: [

                          ],
                        ),
                      )
                    ],
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
