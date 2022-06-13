// To parse this JSON data, do
//
//     final settingsModel = settingsModelFromJson(jsonString);

import 'dart:convert';

class SettingsModel {
  SettingsModel({
    this.show3AndUp = true,
    this.show6AndUp = true,
    this.show9AndUp = true,
    this.show13AndUp = true,
  });

  bool? show3AndUp;
  bool? show6AndUp;
  bool? show9AndUp;
  bool? show13AndUp;

  factory SettingsModel.fromRawJson(String str) =>
      SettingsModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SettingsModel.fromJson(Map<String, dynamic> json) => SettingsModel(
        show3AndUp: json["show3andUp"],
        show6AndUp: json["show6andUp"],
        show9AndUp: json["show9andUp"],
        show13AndUp: json["show13andUp"],
      );

  Map<String, dynamic> toJson() => {
        "show3andUp": show3AndUp,
        "show6andUp": show6AndUp,
        "show9andUp": show9AndUp,
        "show13andUp": show13AndUp,
      };
}
