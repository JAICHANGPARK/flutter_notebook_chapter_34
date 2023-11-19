import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/08/18/20/05/light-bulbs-1603766_1280.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              padding: const EdgeInsets.only(top: 72, left: 16, right: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white.withOpacity(0.2),
                        foregroundColor: Colors.white,
                        radius: 24,
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                        ),
                      ),
                      const Spacer(),
                      CircleAvatar(
                        backgroundColor: Colors.white.withOpacity(0.2),
                        foregroundColor: Colors.white,
                        radius: 24,
                        child: const Icon(
                          Icons.bookmark_border,
                        ),
                      ),
                      const Gap(16),
                      CircleAvatar(
                        backgroundColor: Colors.white.withOpacity(0.2),
                        foregroundColor: Colors.white,
                        radius: 24,
                        child: const Icon(
                          Icons.upload,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 24,
                    ),
                    const Gap(8),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Design house",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Gap(4),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.purpleAccent,
                                size: 16,
                              ),
                              Gap(4),
                              Text('4.9'),
                              Gap(4),
                              Text("(127)"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                      child: const Icon(
                        Icons.chat_bubble_outline,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Gap(24),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Lamp",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      "Posted 1 hr ago",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Gap(16),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.refresh,
                          ),
                          Text("Buy Online"),
                        ],
                      ),
                    ),
                    Gap(8),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.indigo[50],
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.flash_on,
                          ),
                          Text("Best product"),
                        ],
                      ),
                    )
                  ],
                ),
                const Gap(16),
                const Text(
                  "Description",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const Gap(8),
                const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
                const Gap(16),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      "Exchange",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
