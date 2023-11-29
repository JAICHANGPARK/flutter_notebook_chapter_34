import 'package:flutter/material.dart';

class EventsHomePage extends StatefulWidget {
  const EventsHomePage({super.key});

  @override
  State<EventsHomePage> createState() => _EventsHomePageState();
}

class _EventsHomePageState extends State<EventsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(243, 231, 254, 1),
                  Color.fromRGBO(243, 231, 254, 1),
                  Color.fromRGBO(247, 239, 254, 1),
                  Color.fromRGBO(247, 239, 254, 1),
                  Color.fromRGBO(251, 249, 251, 1),
                  Color.fromRGBO(251, 249, 251, 1),
                  Colors.white,
                  Colors.white
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
            ),
          ),
          Positioned.fill(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text("South Korea"),
                                    Icon(Icons.keyboard_arrow_down_outlined),
                                  ],
                                ),
                                Text("within 20 miles"),
                              ],
                            ),
                          ),
                          CircleAvatar(),
                        ],
                      ),
                    ),
                    Column(
                      children: [],
                    ),
                    Container(
                      height: 160,
                      child: Placeholder(),
                    ),
                    Container(
                      height: 100,
                      child: Placeholder(),
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          Container(
                            height: 260,
                            child: Placeholder(),
                          ),
                          Container(
                            height: 300,
                            child: Placeholder(),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
