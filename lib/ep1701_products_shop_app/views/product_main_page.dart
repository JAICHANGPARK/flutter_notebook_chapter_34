import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductMainPage extends StatefulWidget {
  const ProductMainPage({super.key});

  @override
  State<ProductMainPage> createState() => _ProductMainPageState();
}

class _ProductMainPageState extends State<ProductMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextField(
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Search products", icon: Icon(Icons.search)),
                      ),
                    ),
                  ),
                  Gap(8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.percent),
                      onPressed: () {},
                    ),
                  ),
                  Gap(8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.wallet),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              Gap(16),
              Container(
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 24,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Explore Electronics"),
                              Text("Exchange for what you want"),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                ),
                                child: Text("Buy now"),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        bottom: 0,
                        child: Container(
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.pink
                          ),
                        ),
                      )
                    ],
                  )),
              Gap(16),
              Row(
                children: [
                  Text("Categories"),
                  TextButton(
                    onPressed: () {},
                    child: Text("See all"),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                          ),
                          child: Icon(
                            Icons.light,
                            size: 28,
                          ),
                        ),
                        Text("Lamp")
                      ],
                    ),
                  ),
                  Gap(12),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                          ),
                          child: Icon(Icons.light),
                        ),
                        Text("Lamp")
                      ],
                    ),
                  ),
                  Gap(12),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                          ),
                          child: Icon(Icons.light),
                        ),
                        Text("Lamp")
                      ],
                    ),
                  ),
                  Gap(12),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                          ),
                          child: Icon(Icons.light),
                        ),
                        Text("Lamp")
                      ],
                    ),
                  ),
                  Gap(12),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                          ),
                          child: Icon(Icons.light),
                        ),
                        Text("Lamp")
                      ],
                    ),
                  )
                ],
              ),
              Gap(16),
              Row(
                children: [
                  Text("Exclusive"),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.tealAccent,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text("03:25:43"),
                  )
                ],
              ),
              Gap(16),
              Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  children: [
                    Container(
                      color: Colors.blue,
                    ),
                    Container(
                      color: Colors.blue,
                    ),
                    Container(
                      color: Colors.blue,
                    ),
                    Container(
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
