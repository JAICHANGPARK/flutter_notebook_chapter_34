import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookingDetailPage extends StatefulWidget {
  const BookingDetailPage({super.key});

  @override
  State<BookingDetailPage> createState() => _BookingDetailPageState();
}

class _BookingDetailPageState extends State<BookingDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
                children: [
                  Container(
                    height: 320,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  Gap(16),
                  Text("Entrie cabin in mountain"),
                  Row(
                    children: [
                      Icon(Icons.star),
                      Text("4.92"),
                      Text("(116 reviews)"),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("Entire home"),
                          Text("Hosted by unknown"),
                        ],
                      ),
                      CircleAvatar(),
                    ],
                  ),
                  Divider(),
                  Text("Amenities"),
                  Wrap(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(3)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                        child: Text(
                          "Wi-Fi",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
                left: 16,
                right: 16,
                bottom: 16,
                child: Container(
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(32)),
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "18 . 21 Oct . 3 nights",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "\$384",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 42,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(32)),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: Text(
                            "Book now",
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
