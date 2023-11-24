import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_34/ep1709_yoga_coaching_app/views/yoga_coaching_home_page.dart';

void main() => runApp(const YogaCoachingApp());

class YogaCoachingApp extends StatelessWidget {
  const YogaCoachingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: YogaCoachingHomePage(),
    );
  }
}
