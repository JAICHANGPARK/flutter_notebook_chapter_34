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
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_outlined),
          ),
        ],
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 14,
        ),
        title: const Column(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(6),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Search items",
                iconColor: Colors.white,
                icon: Icon(Icons.search),
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(
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
                    margin: const EdgeInsets.only(right: 8),
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
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
          const Gap(24),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              "New offers",
              style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white, fontSize: 24),
            ),
          ),
          const Gap(24),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    height: 300,
                    margin: EdgeInsets.only(bottom: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  right: 8,
                                  top: 8,
                                  child: CircleAvatar(
                                    child: Icon(Icons.favorite_border),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Gap(8),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                            ),
                            Gap(4),
                            Text(
                              "Dream Walker",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.location_on_rounded,
                              color: Colors.lightGreenAccent,
                            ),
                            Gap(4),
                            Text(
                              "1.6km",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Gap(8),
                        Text("2-4 Person Camping Tent",
                          style: TextStyle(
                            color: Colors.white,
                          ),),
                        Gap(8),
                        Row(
                          children: [Text("\$40.00 day",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ), Text("\$180.00 week",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )],
                        )
                      ],
                    ),
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
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
