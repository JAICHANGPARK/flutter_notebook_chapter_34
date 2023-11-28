import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_34/ep1713_events_app/views/events_home_page.dart';

void main() {
  runApp(EventsApp());
}

class EventsApp extends StatelessWidget {
  const EventsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EventsHomePage(),
    );
  }
}
