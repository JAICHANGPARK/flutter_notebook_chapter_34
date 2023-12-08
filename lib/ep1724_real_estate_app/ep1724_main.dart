import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_34/ep1724_real_estate_app/views/real_estate_login_page.dart';

import 'views/real_estate_home_page.dart';

void main() {
  runApp(const RealEstateMobileApp());
}

class RealEstateMobileApp extends StatelessWidget {
  const RealEstateMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const RealEstateLoginPage(),
        "/home": (context) => const RealEstateHomePage(),
      },
    );
  }
}
