import 'package:flutter/material.dart';

class Cizgifilmler extends StatefulWidget {
  const Cizgifilmler({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CizgifilmlerState();
}

class _CizgifilmlerState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        title: const Text("Çizgi Filmler"),
      ),
      body: const Center(
        // ignore: unnecessary_const
        child: const Text("Çizgi Filmler"),
      ),
    );
  }
}
