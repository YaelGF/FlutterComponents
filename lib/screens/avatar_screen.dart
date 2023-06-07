import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatar Screen"),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text("SL"),
            ),
          ),
        ],
        ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage("https://www.denverpost.com/wp-content/uploads/2016/04/20150424__20150426_Z00_OP26C_MEYERp1.jpg?w=654&h=459"),
        )
      ),
    );
  }
}