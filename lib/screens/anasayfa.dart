import 'dart:developer';

import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:guvenlicocukcizgifilm/models/settings.dart';
import 'package:guvenlicocukcizgifilm/screens/ayarlar.dart';
import 'package:guvenlicocukcizgifilm/screens/bizeulasin.dart';
import 'package:guvenlicocukcizgifilm/screens/ebeveyn.dart';
import 'package:guvenlicocukcizgifilm/screens/hakkimizda.dart';
import 'package:guvenlicocukcizgifilm/widgets/myDrawer.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/link_model.dart';
import 'video_detay.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  late SharedPreferences sharedPreferences;
  TextEditingController searchController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  SettingsModel? settings;
  String? password;
  get style => null;
  List<Video> videolar = [];
  List<Video> filteredVideolar = [];

  Future initial() async {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      /// Ebeveyn şifresini alır. Boşsa null verir.
      password = sharedPreferences.getString('password');
      setState(() {
        var settingString = sharedPreferences.getString('settings');
        if (settingString != null) {
          settings = SettingsModel.fromRawJson(settingString);
        } else {
          settings = SettingsModel();
        }
      });
    });
    videolar.clear();
    filteredVideolar.clear();
    if (settings!.show3AndUp == true) {
      videolar.addAll(videos.where((element) => element.yasGrubu!.contains(3)));
    }
    if (settings!.show6AndUp == true) {
      videolar.addAll(videos.where((element) => element.yasGrubu!.contains(6)));
    }
    if (settings!.show9AndUp == true) {
      videolar.addAll(videos.where((element) => element.yasGrubu!.contains(9)));
    }
    if (settings!.show13AndUp == true) {
      videolar
          .addAll(videos.where((element) => element.yasGrubu!.contains(13)));
    }
    videolar = videolar.toSet().toList();
    videolar.sort((a, b) => b.timestamp.compareTo(a.timestamp));
    filteredVideolar.addAll(videolar);
    searchController.addListener(() {
      if (searchController.text.isNotEmpty) {
        List<Video> dummyListData = [];
        for (var item in filteredVideolar) {
          if (item.title
              .toLowerCase()
              .contains(searchController.text.toLowerCase())) {
            dummyListData.add(item);
          }
        }
        setState(() {
          videolar.clear();
          videolar.addAll(dummyListData);
        });
        return;
      } else {
        setState(() {
          videolar.clear();
          videolar.addAll(filteredVideolar);
        });
      }
    });
  }

  @override
  void initState() {
    initial();
    super.initState();
  }

  Future<String?> _showTextInputDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Ebeveyn Şifresini Giriniz'),
            content: TextField(
              controller: passwordController,
              decoration: const InputDecoration(hintText: "Ebeveyn Şifresi"),
            ),
            actions: <Widget>[
              ElevatedButton(
                child: const Text("İptal"),
                onPressed: () => Navigator.pop(context),
              ),
              ElevatedButton(
                child: const Text('Tamam'),
                onPressed: () =>
                    Navigator.pop(context, passwordController.text),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        title: const Text(
          "GÜVENLİ ÇOCUK",
          style: const TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 20,
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () async {
                await initial().then((value) async {
                  if (password != null) {
                    var _pass = await _showTextInputDialog(context);
                    if (_pass == null) {
                      return;
                    }
                    if (password == _pass) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Ebeveyn(),
                        ),
                      ).then((value) async => await initial());
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Girdiğiniz şifre yanlış.'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                    passwordController.clear();
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Ebeveyn(),
                      ),
                    ).then((value) async => await initial());
                  }
                });
              },
              icon: const Icon(Icons.supervised_user_circle_outlined)),
          PopupMenuButton(
            onSelected: (item) {
              print("$item");
              if (item == "Ayarlar") {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Ayarlar()));
              }
              if (item == "Hakkımızda") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Hakkimizda()));
              }

              if (item == "Bize Ulaşın") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BizeUlasin()));
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem(
                child: Text(
                  "Ayarlar",
                  style: TextStyle(
                    color: Colors.green,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  ),
                ),
                value: "Ayarlar",
              ),
              const PopupMenuItem(
                child: const Text(
                  "Hakkımızda",
                  style: TextStyle(
                    color: Colors.green,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  ),
                ),
                value: "Hakkımızda",
              ),
              const PopupMenuItem(
                child: Text(
                  "Bize Ulaşın",
                  style: TextStyle(
                    color: Colors.green,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  ),
                ),
                value: "Bize Ulaşın",
              ),
            ],
          )
        ],
      ),
      drawer: MyDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://hdwallpaperim.com/wp-content/uploads/2017/08/31/156597-Adventure_Time.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Stack(
            children: [
              RefreshIndicator(
                onRefresh: () async => await initial(),
                child: ListView(
                  children: <Widget>[
                    const SizedBox(height: 50),
                    ListView.builder(
                      /// Listenin sonsuz uzunlukta olmasını önler
                      shrinkWrap: true,

                      /// İç içe 2 ListView kullanıyorsan
                      primary: false,
                      itemCount: videolar.length,
                      itemBuilder: (_, index) {
                        var model = videolar[index];

                        /// null-safety

                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VideoDetay(
                                  index: videos.indexOf(model),
                                ),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  model.title,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                height: 160,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(model.thumbnailUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              AnimSearchBar(
                width: 400,
                textController: searchController,
                color: Colors.lightGreen,
                onSuffixTap: () {
                  setState(() {
                    searchController.clear();
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
