import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';

class RealEstateHomePage extends StatefulWidget {
  const RealEstateHomePage({super.key});

  @override
  State<RealEstateHomePage> createState() => _RealEstateHomePageState();
}

class _RealEstateHomePageState extends State<RealEstateHomePage> {
  List<String> tabItems = ["Real Estate", "Apartment", "House", "Motels", "Hotels"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        border: Border.all(
                          color: Colors.grey[200]!,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          icon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                  Gap(16),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey[200]!,
                      ),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.tune),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 48,
              margin: EdgeInsets.only(left: 16, top: 16, bottom: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tabItems.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: index == 0 ? Colors.black : Colors.white,
                      border: Border.all(
                        color: index == 0 ? Colors.black : Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(32)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 24,),
                    margin: EdgeInsets.only(right: 12),
                    child: Center(
                      child: Text(tabItems[index]),
                    ),
                  );
                },
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 16,
                    ),
                    height: 360,
                    child: Placeholder(),
                  ),
                  Container(
                    height: 400,
                    margin: EdgeInsets.all(16),
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      children: List.generate(
                        100,
                        (index) => Container(
                          child: Placeholder(),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 72,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Ionicons.home_outline),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Ionicons.mail_outline),
              label: "Inbox",
            ),
            BottomNavigationBarItem(
              icon: Icon(Ionicons.list_circle_outline),
              label: "Activity",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: "Profile",
            )
          ],
        ),
      ),
    );
  }
}
