import 'package:flutter/material.dart';
import 'package:guvenlicocukcizgifilm/screens/dokuzyas/pembe.dart';
import 'package:guvenlicocukcizgifilm/screens/dokuzyas/sirinler.dart';
import 'package:guvenlicocukcizgifilm/screens/dokuzyas/tomjerry.dart';

// ignore: camel_case_types
class dokuzyas extends StatefulWidget {
  const dokuzyas({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _dokuzyasState();
}

// ignore: camel_case_types
class _dokuzyasState extends State {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          centerTitle: true,
          title: const Text(
            "9+ Yaş ve Üzeri Çizgi Filmler",
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
            child: Column(
              children: <Widget>[
                const SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      radius: 50.0,
                      backgroundImage: NetworkImage(
                          "https://dergice.com/wp-content/uploads/2021/03/sirinler-koyu.jpg"),
                      backgroundColor: Colors.transparent,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 70, vertical: 15),
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          primary: Colors.lightGreen, // background
                          onPrimary: Colors.white, // foreground
                        ),
                        child: const Text(
                          'Şirinler',
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const sirinler()))),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      radius: 50.0,
                      backgroundImage: NetworkImage(
                          "https://api.bubilet.com.tr/files/Etkinlik/tom-ve-jerry-masal-kralina-karsi-84051.jpg"),
                      backgroundColor: Colors.transparent,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 45, vertical: 15),
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          primary: Colors.lightGreen, // background
                          onPrimary: Colors.white, // foreground
                        ),
                        child: const Text('Tom ve Jerry'),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const tomjerry()))),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      radius: 50.0,
                      backgroundImage: NetworkImage(
                          "https://firsat.me/img/big1024/42295_618ec7ee07f6e_1200x900.webp"),
                      backgroundColor: Colors.transparent,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          primary: Colors.lightGreen, // background
                          onPrimary: Colors.white, // foreground
                        ),
                        child: const Text('Pembe Panter'),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const pembe()))),
                  ],
                ),
              ],
            )));
  }
}
