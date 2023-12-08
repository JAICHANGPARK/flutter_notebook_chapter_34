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
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(.4), BlendMode.darken)),
            ),
            width: double.infinity,
            padding: EdgeInsets.all(24),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Discover Your\nDream Home",
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  )
                ],
              ),
            ),
          )),
          Expanded(
            child: Container(
              child: Column(
                children: [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
