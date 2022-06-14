import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guvenlicocukcizgifilm/models/link_model.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoDetay extends StatefulWidget {
  final int index;
  const VideoDetay({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<VideoDetay> createState() => _VideoDetayState();
}

class _VideoDetayState extends State<VideoDetay> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    _controller = YoutubePlayerController(
      initialVideoId: videos[widget.index].id,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    );
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.lightGreen,
      //   centerTitle: true,
      //   title: Text(
      //     "GÜVENLİ ÇOCUK",
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontStyle: FontStyle.italic,
      //       fontSize: 20,
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://hdwallpaperim.com/wp-content/uploads/2017/08/31/156597-Adventure_Time.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              YoutubePlayer(
                controller: _controller,
                liveUIColor: Colors.amber,
              ),
              const SizedBox(height: 55),
              Text(
                videos[widget.index].title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),

              // InkWell(
              //     onTap: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => VideoDetay(
              //             index: widget.index + 1,
              //           ),
              //         ),
              //       );
              //     },
              //     child: const Text("Sonraki"))
            ],
          ),
        ),
      ),
    );
  }
}
