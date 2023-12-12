import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';

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
                image: const NetworkImage(
                  "https://cdn.pixabay.com/photo/2020/08/28/06/13/building-5523630_1280.jpg",
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(.4), BlendMode.darken),
              ),
            ),
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            child: const SafeArea(
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
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    height: 4,
                    width: 42,
                    color: Colors.grey,
                  ),
                  const Gap(32),
                  SizedBox(
                    height: 54,
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed("/home");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(42),
                              ),
                              child: const Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(16),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(42),
                              border: Border.all(
                                color: Colors.grey[300]!,
                              ),
                            ),
                            child: const Center(
                              child: Text("Sign Up"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(32),
                  SizedBox(
                    height: 18,
                    child: Stack(
                      children: [
                        const Positioned(
                          left: 0,
                          bottom: 0,
                          right: 0,
                          top: 0,
                          child: Center(child: Divider()),
                        ),
                        Positioned(
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 7),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: const Text("or Login with"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Gap(32),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[300]!,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: const Stack(
                      children: [
                        Positioned(
                          child: Icon(
                            Ionicons.logo_google,
                          ),
                        ),
                        Positioned(
                          child: Center(
                            child: Text(
                              "Continue with Google",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Gap(16),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[300]!,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: const Stack(
                      children: [
                        Positioned(
                          child: Icon(
                            Ionicons.logo_apple,
                          ),
                        ),
                        Positioned(
                          child: Center(
                            child: Text(
                              "Continue with Apple",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Gap(16),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[300]!,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: const Stack(
                      children: [
                        Positioned(
                          child: Icon(
                            Ionicons.logo_facebook,
                          ),
                        ),
                        Positioned(
                          child: Center(
                            child: Text(
                              "Continue with Facebook",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
