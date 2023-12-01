import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_34/ep1717_renting_app/view/renting_home_page.dart';

void main() {
  runApp(RentingApp());
}

class RentingApp extends StatelessWidget {
  const RentingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RentingHomePage(),
    );
  }
}
