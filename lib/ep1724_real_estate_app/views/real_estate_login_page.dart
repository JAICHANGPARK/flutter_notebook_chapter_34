import 'package:flutter/material.dart';

class RealEstateLoginPage extends StatefulWidget {
  const RealEstateLoginPage({super.key});

  @override
  State<RealEstateLoginPage> createState() => _RealEstateLoginPageState();
}

class _RealEstateLoginPageState extends State<RealEstateLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2020/08/28/06/13/building-5523630_1280.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Home"),
                Text("Discover Your\nDream Home")
              ],
            ),
          )),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
