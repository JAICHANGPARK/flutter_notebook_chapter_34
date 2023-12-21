import 'package:flutter/material.dart';

class RentingHomePage extends StatefulWidget {
  const RentingHomePage({super.key});

  @override
  State<RentingHomePage> createState() => _RentingHomePageState();
}

class _RentingHomePageState extends State<RentingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: "Home"
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}
