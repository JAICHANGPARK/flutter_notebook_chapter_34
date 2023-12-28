import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_34/ep1743_booking_app/views/booking_home_page.dart';

void main() {
  runApp(BookingApp());
}

class BookingApp extends StatelessWidget {
  const BookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookingHomePage(),
    );
  }
}
