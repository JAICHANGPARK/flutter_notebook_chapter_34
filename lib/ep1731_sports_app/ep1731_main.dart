import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_34/ep1731_sports_app/view/sport_start_page.dart';

void main() {
  runApp(SportsApp());
}

class SportsApp extends StatelessWidget {
  const SportsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SportsStartPage(),
    );
  }
}
