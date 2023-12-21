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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings_outlined),
          ),
        ],
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 14,
        ),
        title: Column(
          children: [
            Text(
              "Your location",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "Seoul",
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              
            ),
            child: TextField(),
          ),
          SizedBox(
            height: 42,
            child: Placeholder(),
          ),
          Text("New offers"),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  height: 300,
                  child: Placeholder(),
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "Home"),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
