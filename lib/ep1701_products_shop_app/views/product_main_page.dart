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
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextField(
                        controller: TextEditingController(),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search products",
                          icon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                  const Gap(8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.percent),
                      onPressed: () {},
                    ),
                  ),
                  const Gap(8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.wallet),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const Gap(16),
              Container(
                  height: 150,
                  // decoration: BoxDecoration(
                  //   color: Colors.blue,
                  // ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 24,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(13)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Explore Electronics",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              const Text(
                                "Exchange for what you want",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              const Gap(4),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12,
                                  horizontal: 24,
                                ),
                                child: const Text("Buy now"),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 24,
                        top: 0,
                        bottom: 0,
                        child: Container(
                          width: 140,
                          decoration: const BoxDecoration(
                            color: Colors.pink,
                          ),
                        ),
                      )
                    ],
                  )),
              const Gap(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Categories",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("See all"),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.light,
                            size: 28,
                          ),
                        ),
                        const Gap(8),
                        const Text("Lamp")
                      ],
                    ),
                  ),
                  const Gap(12),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.light,
                            size: 28,
                          ),
                        ),
                        const Gap(8),
                        const Text("Lamp")
                      ],
                    ),
                  ),
                  const Gap(12),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.light,
                            size: 28,
                          ),
                        ),
                        const Gap(8),
                        const Text("Lamp")
                      ],
                    ),
                  ),
                  const Gap(12),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.light,
                            size: 28,
                          ),
                        ),
                        const Gap(8),
                        const Text("Lamp")
                      ],
                    ),
                  ),
                  const Gap(12),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.light,
                            size: 28,
                          ),
                        ),
                        const Gap(8),
                        const Text("Lamp")
                      ],
                    ),
                  )
                ],
              ),
              const Gap(32),
              Row(
                children: [
                  const Text(
                    "Exclusive",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(12),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.tealAccent,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text("03:25:43"),
                  )
                ],
              ),
              const Gap(16),
              Expanded(
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
