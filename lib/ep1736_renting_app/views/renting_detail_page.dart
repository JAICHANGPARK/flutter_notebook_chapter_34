import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RentingDetailPage extends StatefulWidget {
  const RentingDetailPage({super.key});

  @override
  State<RentingDetailPage> createState() => _RentingDetailPageState();
}

class _RentingDetailPageState extends State<RentingDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2019/10/03/11/14/camp-4522970_1280.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 8,
                        right: 8,
                        top: 53,
                        bottom: 16,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_back_ios_new),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.settings_outlined),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 6,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      color: Colors.white,
                                    ),
                                  ),
                                  const Gap(8),
                                  Expanded(
                                    child: Container(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const Gap(8),
                                  Expanded(
                                    child: Container(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const Gap(8),
                                  Expanded(
                                    child: Container(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const Gap(8),
                                  Expanded(
                                    child: Container(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black,
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(),
                      const Gap(8),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dream Walker",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Gap(4),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                                size: 18,
                              ),
                              Gap(8),
                              Text(
                                "4.9",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                      )
                    ],
                  ),
                  const Gap(16),
                  const Text(
                    "2-4 Person Camping Tent",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const Gap(16),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const Gap(16),
                  const Row(
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        color: Colors.lightGreen,
                      ),
                      Gap(16),
                      Text(
                        "Flutter World",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Gap(16),
                  Container(
                    height: 80,
                    decoration:
                        BoxDecoration(color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.all(16),
                    child: const Row(
                      children: [
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "\$5.00",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "hourly",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        )),
                        VerticalDivider(),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "\$5.00",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "hourly",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        )),
                        VerticalDivider(),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "\$5.00",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "hourly",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        )),
                      ],
                    ),
                  ),
                  const Gap(16),
                  Container(
                    decoration: BoxDecoration(color: Colors.lightGreen, borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: const Center(
                      child: Text(
                        "Lease",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
