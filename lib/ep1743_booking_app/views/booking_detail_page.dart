import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookingDetailPage extends StatefulWidget {
  const BookingDetailPage({super.key});

  @override
  State<BookingDetailPage> createState() => _BookingDetailPageState();
}

class _BookingDetailPageState extends State<BookingDetailPage> {
  List<String> amenitiesItems = [
    "Wi-Fi",
    "65 HDTV",
    "indoor fireplace",
    "Hair dryer",
    "Washing machine",
    "Dryer",
    "Refrigerator",
    "Dishwasher",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 320,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(32),
                              bottomRight: Radius.circular(32),
                            ),
                            child: PageView(
                              children: [
                                Container(
                                  color: Colors.grey,
                                ),
                                Container(
                                  color: Colors.red,
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          right: 16,
                          top: 24,
                          bottom: 16,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: CircleAvatar(
                                      foregroundColor: Colors.white,
                                      backgroundColor: Colors.grey[400],
                                      child: const Icon(Icons.clear),
                                    ),
                                  ),
                                  CircleAvatar(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.grey[400],
                                    child: const Icon(Icons.file_upload_outlined),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              DotsIndicator(dotsCount: 4),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Gap(8),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Entrie cabin in mountain",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const Gap(4),
                          const Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 18,
                              ),
                              Gap(4),
                              Text(
                                "4.92",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Gap(4),
                              Text(
                                "(116 reviews)",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            height: 32,
                          ),
                          const Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Entire home",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text("Hosted by unknown"),
                                  ],
                                ),
                              ),
                              CircleAvatar(),
                            ],
                          ),
                          const Divider(
                            height: 32,
                          ),
                          const Text(
                            "Amenities",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Gap(8),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: amenitiesItems
                                .map((e) => Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200], borderRadius: BorderRadius.circular(3)),
                                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                                      child: Text(
                                        e,
                                        style: const TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ))
                                .toList(),
                          ),
                          const Divider(),
                          const ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Icon(Icons.location_searching),
                            title: Text("Self check-in"),
                            subtitle: Text("Check yourself in with the lockbox"),
                          ),
                          const ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Icon(Icons.key),
                            title: Text("Great check-in experience"),
                            subtitle: Text("Check yourself in with the lockbox"),
                          ),
                          const ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Icon(Icons.key),
                            title: Text("Great check-in experience"),
                            subtitle: Text("Check yourself in with the lockbox"),
                          )
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            ),
            Positioned(
              left: 16,
              right: 16,
              bottom: 16,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(32),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  children: [
                    const Gap(8),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "18 . 21 Oct . 3 nights",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          Text(
                            "\$384",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 42,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(32)),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: const Center(
                        child: Text(
                          "Book now",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
