import 'package:flutter/material.dart';
import 'package:guvenlicocukcizgifilm/screens/onucyas/adventure.dart';
import 'package:guvenlicocukcizgifilm/screens/onucyas/gumball.dart';
import 'package:guvenlicocukcizgifilm/screens/onucyas/surekli.dart';

// ignore: camel_case_types
class onucyas extends StatefulWidget {
  const onucyas({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _onucyasState();
}

// ignore: camel_case_types
class _onucyasState extends State {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          centerTitle: true,
          title: const Text(
            "13+ Yaş ve Üzeri Çizgi Filmler",
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
                          "https://www.awn.com/sites/default/files/styles/large_featured/public/image/featured/1016574-cartoon-network-orders-more-amazing-world-gumball.jpg?itok=XmyQ8fpY"),
                      backgroundColor: Colors.transparent,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 55, vertical: 15),
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          primary: Colors.lightGreen, // background
                          onPrimary: Colors.white, // foreground
                        ),
                        child: const Text(
                          'Gumball',
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const gumball()))),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      radius: 50.0,
                      backgroundImage: NetworkImage(
                          "https://www.studiosity.com/hubfs/DTC/09.blog/AdventureTime_characters.jpg"),
                      backgroundColor: Colors.transparent,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 27, vertical: 15),
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          primary: Colors.lightGreen, // background
                          onPrimary: Colors.white, // foreground
                        ),
                        child: const Text(
                          'Adveture Time',
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const adventure()))),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      radius: 50.0,
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/originals/80/36/23/803623fc4cf44109bda297481a1f5a83.jpg"),
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
                        child: const Text('Sürekli Dizi'),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const surekli()))),
                  ],
                ),
              ],
            )));
  }
}
