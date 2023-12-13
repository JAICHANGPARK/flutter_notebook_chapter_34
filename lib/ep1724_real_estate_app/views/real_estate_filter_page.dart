import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RealEstateFilterPage extends StatefulWidget {
  const RealEstateFilterPage({super.key});

  @override
  State<RealEstateFilterPage> createState() => _RealEstateFilterPageState();
}

class _RealEstateFilterPageState extends State<RealEstateFilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey[200]!,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_arrow_left,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text("Filter Property"),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey[200]!,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.refresh,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(24),
              Container(
                height: 56,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(32),
                ),
                padding: EdgeInsets.all(2),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text("For Rent"),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Center(
                          child: Text(
                            "For Sale",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(24),
              Text("Price range"),
              Gap(24),
              Container(
                height: 140,
                child: Stack(
                  children: [
                    Positioned(
                      left: 32,
                      bottom: 50,
                      right: 32,
                      top: 0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: List.generate(
                          36,
                          (index) => Container(
                            color: Colors.orange,
                            width: 8,
                            height: Random().nextInt(100).toDouble() + 42,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 24,
                      child: RangeSlider(
                        min: 0,
                        max: 100,
                        activeColor: Colors.black,
                        inactiveColor: Colors.grey,
                        values: RangeValues(
                          20.0,
                          80.0,
                        ),
                        onChanged: (s) {},
                        labels: RangeLabels(
                          "20",
                          "80",
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                height: 32,
              ),
              Text("House Type"),
              Gap(16),
              SizedBox(
                height: 42,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    4,
                    (index) => Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      margin: EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                          color: index == 0 ? Colors.black : Colors.white,
                          borderRadius: BorderRadius.circular(32),
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      child: Center(
                        child: Text(
                          "Real Estate",
                          style: TextStyle(
                            color: index == 0 ? Colors.white : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                height: 32,
              ),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rooms",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        fontSize: 18),
                      ),
                      Gap(8),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey[200]!,
                              ),
                              shape: BoxShape.circle,
                              // borderRadius: BorderRadius.circular(24)
                            ),
                            padding: EdgeInsets.all(12),
                            child: Text("1"),
                          ),
                          Gap(8),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey[200]!,
                              ),
                              shape: BoxShape.circle,
                              // borderRadius: BorderRadius.circular(24)
                            ),
                            padding: EdgeInsets.all(12),
                            child: Text("2"),
                          ),
                          Gap(8),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey[200]!,
                              ),
                              shape: BoxShape.circle,
                              // borderRadius: BorderRadius.circular(24)
                            ),
                            padding: EdgeInsets.all(12),
                            child: Text("3"),
                          ),
                          Gap(8),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey[200]!,
                              ),
                              shape: BoxShape.circle,
                              // borderRadius: BorderRadius.circular(24)
                            ),
                            padding: EdgeInsets.all(12),
                            child: Text("4+"),
                          ),
                        ],
                      )
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      Text("Bathrooms"),
                    ],
                  ))
                ],
              ),
              Divider(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
