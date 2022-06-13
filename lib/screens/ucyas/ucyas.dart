import 'package:flutter/material.dart';
import 'package:guvenlicocukcizgifilm/screens/ucyas/heidi.dart';
import 'package:guvenlicocukcizgifilm/screens/ucyas/masa.dart';
import 'package:guvenlicocukcizgifilm/screens/ucyas/pingu.dart';

class ucyas extends StatefulWidget {
  const ucyas({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ucyasState();
}

class _ucyasState extends State {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          centerTitle: true,
          title: Text("3+ Yaş ve Üzeri Çizgi Filmler",
          style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontSize: 20,
          ),
      
          ),
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
            child: Column(
          children: <Widget>[
            const SizedBox(height: 100),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 
                 children: [
                   const CircleAvatar(
                radius: 50.0,
                backgroundImage:
                    NetworkImage("https://www.gercekgundem.com/images/posts/201811/58324_480x270.jpg"),
                backgroundColor: Colors.transparent,
              ),

                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                          textStyle:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          primary: Colors.lightGreen, // background
                          onPrimary: Colors.white, // foreground
                        ),
                        child: Text('Maşa ile Koca Ayı',style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontSize: 20,
          ),),
                        onPressed: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => masa()))),
                 ],
               ),
             
            const SizedBox(height: 30),
            Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 

                 children: [
                   const CircleAvatar(
                radius: 50.0,
                backgroundImage:
                    NetworkImage("https://imgrosetta.mynet.com.tr/file/12807146/12807146-728xauto.png"),
                backgroundColor: Colors.transparent,
              ),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 86, vertical: 15),
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  primary: Colors.lightGreen, // background
                  onPrimary: Colors.white, // foreground
                ),
                child: Text('Heidi'),
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => heidi()))),
                 ],
            ),
            const SizedBox(height: 30),
            Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 

                 children: [
                   const CircleAvatar(
                radius: 50.0,
                backgroundImage:
                    NetworkImage("https://w7.pngwing.com/pngs/596/63/png-transparent-youtube-penguin-meme-peekaboo-pingu-72-television-meme-bird-thumbnail.png"),
                backgroundColor: Colors.transparent,
              ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                primary: Colors.lightGreen, // background
                onPrimary: Colors.white, // foreground
              ),
             child: Text('Pingu'),
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => pingu()))
            ),

          ],
            ),
          ],
        )));
  }
}
