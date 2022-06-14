import 'package:flutter/material.dart';

class BizeUlasin extends StatefulWidget {
  const BizeUlasin({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BizeUlasinState();
}

class _BizeUlasinState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        title: const Text(
          "Bize Ulaşın",
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://hdwallpaperim.com/wp-content/uploads/2017/08/31/156597-Adventure_Time.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          // ignore: unnecessary_const
          child: const Text(
            "Bize Ulaşın",
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
