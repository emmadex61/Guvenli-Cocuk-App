import 'package:flutter/material.dart';
import 'package:guvenlicocukcizgifilm/models/settings.dart';
import 'package:guvenlicocukcizgifilm/screens/anasayfa.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyDrawerState();
}

class _MyDrawerState extends State {
  late SharedPreferences sharedPreferences;
  SettingsModel? settings;

  @override
  void initState() {
    initial();
    super.initState();
  }

  void initial() async {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      var settingString = sharedPreferences.getString('settings');
      if (settingString != null) {
        settings = SettingsModel.fromRawJson(settingString);
      } else {
        settings = SettingsModel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.lightGreen,
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.child_care,
                    color: Colors.white,
                    size: 100.0,
                  ),
                  Text(
                    "GÜVENLİ ÇOCUK",
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'Anasayfa',
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          ExpansionTile(
            leading: Icon(
              Icons.child_care,
              color: Colors.white,
            ),
            title: Text(
              'Çizgi Filmler',
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
            children: <Widget>[
              if (settings?.show3AndUp == true)
                ListTile(
                  title: Text(
                    '+3 Yaş ve Üzeri',
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/ucyas");
                  },
                ),
              if (settings?.show6AndUp == true)
                ListTile(
                  title: Text(
                    '+6 Yaş ve Üzeri',
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/altiyas");
                  },
                ),
              if (settings?.show9AndUp == true)
                ListTile(
                  title: Text(
                    '+9 Yaş ve Üzeri',
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/dokuzyas");
                  },
                ),
              if (settings?.show13AndUp == true)
                ListTile(
                  title: Text(
                    '+13 Yaş ve Üzeri',
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/onucyas");
                  },
                ),
            ],
          ),
          ListTile(
            leading: Icon(
              Icons.music_video,
              color: Colors.white,
            ),
            title: Text(
              'Çocuk Şarkıları',
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushNamed(context, "/cocuksarkilari");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.verified_user_outlined,
              color: Colors.white,
            ),
            title: Text(
              'Eğitici Videolar',
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushNamed(context, "/egiticivideolar");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.video_camera_front_outlined,
              color: Colors.white,
            ),
            title: Text(
              'Dil Eğitimi',
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pushNamed(context, "/dilegitimi");
            },
          ),
        ],
      ),
    );
  }
}
