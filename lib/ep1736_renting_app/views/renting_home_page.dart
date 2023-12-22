import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
          children: const [
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search items",
                iconColor: Colors.white,
                icon: Icon(Icons.search),
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                left: 16,
                top: 8,
              ),
              height: 36,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: index == 0 ? Colors.white : Colors.white.withOpacity(.3),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    margin: EdgeInsets.only(right: 8),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 5),
                    child: Center(
                      child: Text(
                        "All",
                        style: TextStyle(
                          color: index == 0 ? Colors.black : Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              )),
          Gap(24),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "New offers",
              style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white, fontSize: 24),
            ),
          ),
          Gap(24),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    height: 300,
                    child: Placeholder(),
                  );
                },
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
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
