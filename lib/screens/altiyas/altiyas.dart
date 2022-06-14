import 'package:flutter/material.dart';
import 'package:guvenlicocukcizgifilm/screens/altiyas/caillou.dart';
import 'package:guvenlicocukcizgifilm/screens/altiyas/niloya.dart';
import 'package:guvenlicocukcizgifilm/screens/altiyas/pepe.dart';

// ignore: camel_case_types
class altiyas extends StatefulWidget {
  const altiyas({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _altiyasState();
}

// ignore: camel_case_types
class _altiyasState extends State {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          centerTitle: true,
          title: const Text(
            "6+ Yaş ve Üzeri Çizgi Filmler",
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
                          "https://i.hbrcdn.com/haber/2011/02/07/cocuklar-caillou-ile-bulustu-2521355_6279_amp.jpg"),
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
                          'Caillou',
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const caillou()))),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      radius: 50.0,
                      backgroundImage: NetworkImage(
                          "https://tiyatrolar.com.tr/files/activity/p/pepee/image/pepee.jpg"),
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
                          'Pepee',
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const pepe()))),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      radius: 50.0,
                      backgroundImage: NetworkImage(
                          "https://pbs.twimg.com/profile_images/613995256053305344/3WJ2gv6R_400x400.jpg"),
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
                          'Niloya',
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const niloya()))),
                  ],
                ),
              ],
            )));
  }
}
