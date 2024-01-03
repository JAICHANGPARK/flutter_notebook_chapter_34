import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookingSearchPage extends StatefulWidget {
  const BookingSearchPage({super.key});

  @override
  State<BookingSearchPage> createState() => _BookingSearchPageState();
}

class _BookingSearchPageState extends State<BookingSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.clear),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.tune),
          ),
        ],
        title: Text("Search"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(42),
            ),
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Icon(Icons.search),
                Gap(16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Unknown",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("18. 21 Oct 4 guests"),
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Center(
                    child: Text(
                      "Any type",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(border: Border.all()),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Center(
                    child: Text(
                      "Room",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
