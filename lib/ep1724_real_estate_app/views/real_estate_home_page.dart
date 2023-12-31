import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_34/ep1724_real_estate_app/views/real_estate_filter_page.dart';
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
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          icon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                  const Gap(16),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey[200]!,
                      ),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.tune),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => RealEstateFilterPage(),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 48,
              margin: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
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
                        borderRadius: BorderRadius.circular(32)),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    margin: const EdgeInsets.only(right: 12),
                    child: Center(
                      child: Text(
                        tabItems[index],
                        style: TextStyle(
                          color: index == 0 ? Colors.white : Colors.grey,
                        ),
                      ),
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
                    margin: const EdgeInsets.only(
                      left: 16,
                    ),
                    height: 320,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 280,
                          margin: const EdgeInsets.only(right: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2014/07/10/17/18/large-home-389271_1280.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              const Gap(16),
                              const Text(
                                "\$440,000",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              const Gap(8),
                              const Text("123 Main St, Developer, OK 238123821"),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const Gap(4),
                  Container(
                    height: 400,
                    margin: const EdgeInsets.all(16),
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 1.5,
                      children: List.generate(
                        100,
                        (index) => Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(
                              image: const NetworkImage(
                                  "https://cdn.pixabay.com/photo/2017/01/07/17/48/interior-1961070_1280.jpg"),
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(.4),
                                BlendMode.darken,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "New Listing",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
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
