import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class RealEstateHomePage extends StatefulWidget {
  const RealEstateHomePage({super.key});

  @override
  State<RealEstateHomePage> createState() => _RealEstateHomePageState();
}

class _RealEstateHomePageState extends State<RealEstateHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.mail_outline),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.list_circle_outline),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Home",
          )
        ],
      ),
    );
  }
}
