import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_34/ep1731_sports_app/view/sport_app_main_page.dart';
import 'package:gap/gap.dart';

class SportsStartPage extends StatefulWidget {
  const SportsStartPage({super.key});

  @override
  State<SportsStartPage> createState() => _SportsStartPageState();
}

class _SportsStartPageState extends State<SportsStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://cdn.pixabay.com/photo/2013/12/07/14/04/yoga-224643_1280.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 42, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(24),
                const Text(
                  "YOUR FITNESS COACH",
                  style: TextStyle(color: Colors.tealAccent),
                ),
                const Gap(24),
                const Text(
                  "Welcome to Your\nUltimate Training\nCompanion",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(24),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SportsAppMainPage(),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: const BoxDecoration(
                      color: Colors.tealAccent,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "GET STARTED",
                        ),
                        Icon(
                          Icons.play_arrow,
                        )
                      ],
                    ),
                  ),
                ),
                const Gap(24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
