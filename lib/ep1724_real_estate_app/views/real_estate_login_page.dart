import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    height: 4,
                    width: 42,
                    color: Colors.grey,
                  ),
                  Gap(32),
                  SizedBox(
                    height: 64,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(42)),
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Gap(16),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(42),
                              border: Border.all(
                                color: Colors.grey[300]!,
                              ),
                            ),
                            child: Center(
                              child: Text("Sign Up"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(32),
                  SizedBox(
                    height: 16,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          bottom: 0,
                          right: 0,
                          top: 0,
                          child: Center(child: Divider()),
                        ),
                        Positioned(
                          child: Center(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 7),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Text("or Login with"),
                            ),

                          ),
                        )
                      ],
                    ),
                  ),
                  Gap(32),
                  Container(
                    decoration: BoxDecoration(
                      
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
