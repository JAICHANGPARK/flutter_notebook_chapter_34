import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class YogaCoachingDetailPage extends StatefulWidget {
  const YogaCoachingDetailPage({super.key});

  @override
  State<YogaCoachingDetailPage> createState() => _YogaCoachingDetailPageState();
}

class _YogaCoachingDetailPageState extends State<YogaCoachingDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("yoguru"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.face),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Schedule data",
              style: GoogleFonts.kronaOne(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(16),
            SizedBox(
              height: 72,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  100,
                  (index) => Container(
                    width: 54,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(switch (DateTime.now()
                            .add(
                              Duration(days: index),
                            )
                            .weekday) {
                          0 => "0",
                          1 => "Mon",
                          2 => "Tue",
                          3 => "Wed",
                          4 => "Thu",
                          5 => "Fri",
                          6 => "Sat",
                          7 => "Sun",
                          _ => "?",
                        }),
                        Text(
                          "${DateTime.now().add(
                                Duration(days: index),
                              ).day}",
                          style: GoogleFonts.kronaOne(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Gap(16),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.only(bottom: 24),
                      height: 360,
                      child: Row(
                        children: [
                          Container(
                            width: 92,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(child: Text("11:00")),
                                      Gap(8),
                                      Center(child: Text("11:00")),
                                      Gap(8),
                                      Center(child: Text("11:00")),
                                      Gap(8),
                                      Center(child: Text("11:00")),
                                      Gap(8),
                                      Center(child: Text("11:00")),
                                      Gap(8),
                                      Center(child: Text("11:00")),
                                      Gap(8),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xff7eb179),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Submit",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Gap(16),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2021/01/16/17/46/male-5922911_1280.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    right: 16,
                                    top: 16,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Yoga Guru",
                                          style: GoogleFonts.kronaOne(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                          ),
                                        ),
                                        Gap(16),
                                        Icon(Icons.person_outline,  color: Colors.white),
                                        Gap(16),

                                        Icon(Icons.list_alt_outlined,  color: Colors.white),
                                        Gap(16),
                                        Icon(Icons.refresh,  color: Colors.white),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
