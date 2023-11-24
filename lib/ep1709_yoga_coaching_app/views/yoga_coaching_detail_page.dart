import 'package:flutter/material.dart';
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
            SizedBox(
              height: 100,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    height: 400,
                    child: Placeholder(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
