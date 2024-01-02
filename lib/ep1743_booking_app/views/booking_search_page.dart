import 'package:flutter/material.dart';

class BookingSearchPage extends StatefulWidget {
  const BookingSearchPage({super.key});

  @override
  State<BookingSearchPage> createState() => _BookingSearchPageState();
}

class _BookingSearchPageState extends State<BookingSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.clear),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.tune),
          ),
        ],
        title: Text("Search"),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
