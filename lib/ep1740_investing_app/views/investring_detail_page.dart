import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class InvestingDetailPage extends StatefulWidget {
  const InvestingDetailPage({super.key});

  @override
  State<InvestingDetailPage> createState() => _InvestingDetailPageState();
}

class _InvestingDetailPageState extends State<InvestingDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(23, 23, 23, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(23, 23, 23, 1),
        foregroundColor: Colors.grey,
        centerTitle: true,
        title: Text("Unknown"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 400,
                      child: Placeholder(),
                    ),
                    Row(
                      children: [
                        Text("About"),
                        OutlinedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.check),
                          label: Text("Watching"),
                        ),
                      ],
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Detail",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),),
                          Gap(12),
                          Expanded(
                            child: GridView.count(
                              crossAxisCount: 2,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Low",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      "\$131.26",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Gap(16),
            SizedBox(
              height: 58,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          "Buy",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  Gap(16),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          "Sell",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
