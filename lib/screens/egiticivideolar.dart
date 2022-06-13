import 'package:flutter/material.dart';
import 'package:guvenlicocukcizgifilm/models/link_model.dart';
import 'package:guvenlicocukcizgifilm/screens/video_detay.dart';

class egiticivideolar extends StatefulWidget {
  const egiticivideolar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _egiticivideolarState();
}

class _egiticivideolarState extends State {
  get style => null;
  List<Video> videolar = [];

  @override
  void initState() {
    videolar.addAll(videos);
    videolar.sort((a, b) => a.timestamp.compareTo(b.timestamp));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          centerTitle: true,
          title: Text("Eğitici Videolar",style:TextStyle(color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
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
            child: ListView(
          children: <Widget>[
            const SizedBox(height: 20),
            ListView.builder(
              /// Listenin sonsuz uzunlukta olmasını önler
              shrinkWrap: true,

              /// İç içe 2 ListView kullanıyorsan
              primary: false,
              itemCount: videolar.length,
              itemBuilder: (_, index) {
                var model = videolar[index];

                /// null-safety
                if (model.yasGrubu != null && model.yasGrubu!.contains(13)) {
                  if (model.cartoon != null &&
                      model.cartoon.contains('egitici')) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoDetay(
                              // index: videos.indexOf(model),
                              index: videos.indexOf(model),
                            ),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(model.title,style:TextStyle(color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              ),),
                          ),
                          Container(
                            height: 160,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(model.thumbnailUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    );
                  }
                  return SizedBox();
                }
                return SizedBox();
              },
            ),
          ],
        )));
  }
}
