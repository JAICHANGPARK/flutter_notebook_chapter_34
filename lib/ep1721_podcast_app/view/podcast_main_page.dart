import 'package:flutter/material.dart';

class PodcastMainPage extends StatefulWidget {
  const PodcastMainPage({super.key});

  @override
  State<PodcastMainPage> createState() => _PodcastMainPageState();
}

class _PodcastMainPageState extends State<PodcastMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 227, 221, 1),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Row(
                  children: [
                    
                  ],
                )),
                Expanded(child: Row(
                  children: [
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(Icons.search))
                  ],
                ))
              ],

            )
          ],
        ),
      ),
    );
  }
}
