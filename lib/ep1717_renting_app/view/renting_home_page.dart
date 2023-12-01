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
      backgroundColor: Color(0xff151617),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        width: 160,
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(32)
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on,color: Colors.white,),
                            Text("South Korea")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Badge(
                    child: IconButton(
                      icon: Icon(Icons.notifications_none,),

                      color: Colors.white, onPressed: () {  },
                    ),
                    backgroundColor: Color(0xff794aff),
                    label: Text("1"),

                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
