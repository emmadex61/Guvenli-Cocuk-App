import 'package:flutter/material.dart';
import 'package:guvenlicocukcizgifilm/models/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Ebeveyn extends StatefulWidget {
  const Ebeveyn({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EbeveynState();
}

class _EbeveynState extends State<Ebeveyn> {
  late SharedPreferences sharedPreferences;
  SettingsModel? settings;
  final password1Controller = TextEditingController();
  final password2Controller = TextEditingController();

  String? password;
  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      /// Ebeveyn şifresini alır. Boşsa null verir.
      password = sharedPreferences.getString('password');
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text(
          "Ebeveyn Ayarları",
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 25,
            decorationColor: Colors.white,
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
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
          ),
          padding: const EdgeInsets.all(26.0),
          child: password != null ? buildSettings() : buildEbeveyn(),
        ),
      ),
    );
  }

  Widget buildEbeveyn() {
    /// İlk giriş yapmış ve şifre tanımlanmamışsa
    /// Bu ekranı gösterir.
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Center(
          child: Text(
            'Güvenli Çocuk\'a Hoşgeldiniz!'
            '\n'
            'Ayarları uygulamanız için ebeveyn şifresi belirlemeniz gerekmektedir.',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 24),
        TextField(
          controller: password1Controller,
          decoration: InputDecoration(
              labelText: "Belirlemek istediğiniz şifreyi giriniz. ",
              labelStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w500),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: password2Controller,
          decoration: InputDecoration(
              labelText: "Belirlemek istediğiniz şifreyi tekrar giriniz. ",
              labelStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w500),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
              )),
        ),
        const SizedBox(height: 8),
        ElevatedButton(
            onPressed: () {
              String? password1 = password1Controller.text;
              String? password2 = password2Controller.text;
              if (password1 == password2) {
                /// Devam
                sharedPreferences.setString("password", password1);
                password = password1;
                setState(() {});
              } else {
                /// Girilen şifreler birbiriyle uymuyor.
                /// Toast yada snackbar gösterebilirsin.
              }
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            child: const Text(
              'Kaydet',
              style: TextStyle(color: Colors.orange),
            )),
      ],
    );
  }

  Widget buildSettings() {
    /// İlk giriş yapmış ve şifre tanımlanmamışsa
    /// Bu ekranı gösterir.
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CheckboxListTile(
          value: settings!.show3AndUp,
          onChanged: (v) {
            setState(() {
              settings!.show3AndUp = v;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
          title: const Text("3 Yaş ve Üzeri Videoları Göster"),
        ),
        CheckboxListTile(
          value: settings!.show6AndUp,
          onChanged: (v) {
            setState(() {
              settings!.show6AndUp = v;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
          title: const Text("6 Yaş ve Üzeri Videoları Göster"),
        ),
        CheckboxListTile(
          value: settings!.show9AndUp,
          onChanged: (v) {
            setState(() {
              settings!.show9AndUp = v;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
          title: const Text("9 Yaş ve Üzeri Videoları Göster"),
        ),
        CheckboxListTile(
          value: settings!.show13AndUp,
          onChanged: (v) {
            setState(() {
              settings!.show13AndUp = v;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
          title: const Text("13 Yaş ve Üzeri Videoları Göster"),
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton(
          onPressed: () {
            sharedPreferences.setString("settings", settings!.toRawJson());
          },
           style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: const Text(
            "Ayarları Kaydet",
                   style: TextStyle(color: Colors.orange),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
         ElevatedButton(
                 onPressed: () {
                   setState(() {
                     password = null;
                     sharedPreferences.remove("password");
                   });
                 },
                 style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                 ),
                 child: const Text(
                   'Şifreyi Sıfırla',
                   style: TextStyle(color: Colors.orange),
                 ),
               ),

      ],
    );
  }
}


  