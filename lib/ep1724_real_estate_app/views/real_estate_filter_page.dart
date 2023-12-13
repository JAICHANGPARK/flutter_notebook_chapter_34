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
              Gap(6),
              Container(
                height: 140,
                color: Colors.blue,
                child: Stack(
                  children: [
                    RangeSlider(values: [0.0], onChanged: (onChanged))
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
                      ),
                      child: Center(child: Text("Real Estate")),
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
                    children: [
                      Text("Rooms"),
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
