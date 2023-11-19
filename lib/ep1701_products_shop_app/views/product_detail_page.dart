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
                        child: Icon(
                          Icons.arrow_back_ios_new,
                        ),
                        backgroundColor: Colors.white.withOpacity(0.2),
                        foregroundColor: Colors.white,
                      ),
                      Spacer(),
                      CircleAvatar(  backgroundColor: Colors.white.withOpacity(0.2),
                        foregroundColor: Colors.white,
                        child: Icon(
                          Icons.bookmark_border,
                        ),
                      ),
                      Gap(16),
                      CircleAvatar(  backgroundColor: Colors.white.withOpacity(0.2),
                        foregroundColor: Colors.white,
                        child: Icon(
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
                    const CircleAvatar(),
                    const Gap(8),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Design house"),
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
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                      child: const Icon(Icons.chat_bubble_outline),
                    ),
                  ],
                ),
                const Gap(16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Lamp",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Posted 1 hr ago"),
                  ],
                ),
                const Gap(16),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.circular(32)),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.refresh,
                          ),
                          Text("Buy Online"),
                        ],
                      ),
                    )
                  ],
                ),
                const Gap(16),
                const Text("Description"),
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
                    child: Text("Exchange"),
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
