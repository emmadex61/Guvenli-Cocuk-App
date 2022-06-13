import 'package:flutter/material.dart';

class Hakkimizda extends StatefulWidget {
  const Hakkimizda({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HakkimizdaState();
}

class _HakkimizdaState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        title: Text("Hakkımızda",style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontSize: 20,
          ),),
      ),
      body: Container(
          decoration: BoxDecoration(
           image: DecorationImage(
             image: NetworkImage(
               "https://hdwallpaperim.com/wp-content/uploads/2017/08/31/156597-Adventure_Time.jpg",
             ),
             fit: BoxFit.cover,
           ),
         ),
        child: Center(
          child: Text("Hakkımızda"),
        ),
      ),
    );
  }
}