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
                      border: Border.all(),
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
                      border: Border.all(),
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
                height: 52,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              Gap(24),
              Text("Price range"),

            ],
          ),
        ),
      ),
    );
  }
}
