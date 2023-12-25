import 'package:flutter/material.dart';

class InvestingHomePage extends StatefulWidget {
  const InvestingHomePage({super.key});

  @override
  State<InvestingHomePage> createState() => _InvestingHomePageState();
}

class _InvestingHomePageState extends State<InvestingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
        ],
      ),
    );
  }
}
