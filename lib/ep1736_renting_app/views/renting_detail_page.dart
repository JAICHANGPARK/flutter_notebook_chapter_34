import 'package:flutter/material.dart';


class RentingDetailPage extends StatefulWidget {
  const RentingDetailPage({super.key});

  @override
  State<RentingDetailPage> createState() => _RentingDetailPageState();
}

class _RentingDetailPageState extends State<RentingDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Placeholder()),
          Expanded(child: Placeholder()),
        ],
      ),
    );
  }
}
