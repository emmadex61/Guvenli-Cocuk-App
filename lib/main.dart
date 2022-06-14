import 'package:flutter/material.dart';
import 'package:guvenlicocukcizgifilm/screens/altiyas/caillou.dart';
import 'package:guvenlicocukcizgifilm/screens/dokuzyas/pembe.dart';
import 'package:guvenlicocukcizgifilm/screens/dokuzyas/sirinler.dart';
import 'package:guvenlicocukcizgifilm/screens/dokuzyas/tomjerry.dart';
import 'package:guvenlicocukcizgifilm/screens/onucyas/adventure.dart';
import 'package:guvenlicocukcizgifilm/screens/onucyas/gumball.dart';
import 'package:guvenlicocukcizgifilm/screens/onucyas/surekli.dart';
import 'package:guvenlicocukcizgifilm/screens/ucyas/heidi.dart';
import 'package:guvenlicocukcizgifilm/screens/ucyas/masa.dart';
import 'package:guvenlicocukcizgifilm/screens/altiyas/niloya.dart';
import 'package:guvenlicocukcizgifilm/screens/altiyas/pepe.dart';
import 'package:guvenlicocukcizgifilm/screens/ucyas/pingu.dart';
import 'package:guvenlicocukcizgifilm/screens/anasayfa.dart';
import 'package:guvenlicocukcizgifilm/screens/bizeulasin.dart';
import 'package:guvenlicocukcizgifilm/screens/altiyas/altiyas.dart';
import 'package:guvenlicocukcizgifilm/screens/dokuzyas/dokuzyas.dart';
import 'package:guvenlicocukcizgifilm/screens/cizgifilmler.dart';
import 'package:guvenlicocukcizgifilm/screens/cocuksarkilari.dart';
import 'package:guvenlicocukcizgifilm/screens/dilegitimi.dart';
import 'package:guvenlicocukcizgifilm/screens/ebeveyn.dart';
import 'package:guvenlicocukcizgifilm/screens/egiticivideolar.dart';
import 'package:guvenlicocukcizgifilm/screens/hakkimizda.dart';
import 'package:guvenlicocukcizgifilm/screens/onucyas/onucyas.dart';
import 'package:guvenlicocukcizgifilm/screens/ucyas/ucyas.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/":(context) => Anasayfa(),
      "/bizeulasin":(context) => BizeUlasin(),
      "/cizgifilmler":(context) => Cizgifilmler(),
      "/cocuksarkilari":(context) => cocuksarkilari(),
      "/dilegitimi":(context) => dilegitimi(),
      "/egiticivideolar":(context) => egiticivideolar(),
      "/hakkimizda":(context) => Hakkimizda(),
      "/ucyas":(context) => ucyas(),
      "/altiyas":(context) => altiyas(),
      "/dokuzyas":(context) => dokuzyas(),
      "/onucyas":(context) => onucyas(),
      "/ebeveyn":(context) => Ebeveyn(),
      "/pepe":(context) => pepe(),
      "/caillou":(context) => caillou(),
      "/niloya":(context) => niloya(),
      "/masa":(context) => masa(),
      "/heidi":(context) => heidi(),
      "/pingu":(context) => pingu(),
      "/sirinler":(context) => sirinler(),
      "/tomjerry":(context) => tomjerry(),
      "/pembe":(context) => pembe(),
      "/surekli":(context) => surekli(),
      "/gumball":(context) => gumball(),
      "/adventure":(context) => adventure(),


      
      
     


    },
  ));
}
