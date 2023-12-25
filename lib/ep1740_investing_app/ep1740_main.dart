import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_34/ep1740_investing_app/views/investing_home_page.dart';
import 'package:flutter_notebook_chapter_34/ep1740_investing_app/views/investring_detail_page.dart';

void main() {
  runApp(const InvestingApp());
}

class InvestingApp extends StatelessWidget {
  const InvestingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => InvestingHomePage(),
      },
    );
  }
}
