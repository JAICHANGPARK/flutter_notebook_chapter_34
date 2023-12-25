import 'package:flutter/material.dart';

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
      body: Column(
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
            height: 240,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
