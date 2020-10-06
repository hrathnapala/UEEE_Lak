import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsModel {
  final String settingName;
  final Icon icon;

  SettingsModel({this.settingName, this.icon});

  static final List<SettingsModel> dummyData = [
    SettingsModel(settingName: "My ads", icon: Icon(Icons.card_membership)),
    SettingsModel(
        settingName: "My membership", icon: Icon(Icons.store_mall_directory)),
    SettingsModel(settingName: "My Profile", icon: Icon(Icons.description)),
    SettingsModel(settingName: "Favorites", icon: Icon(Icons.favorite)),
    SettingsModel(settingName: "Stay safe", icon: Icon(Icons.location_on)),
    SettingsModel(settingName: "FAQ", icon: Icon(Icons.question_answer)),
    SettingsModel(
        settingName: "How to sell fast", icon: Icon(Icons.location_on)),
    SettingsModel(settingName: "More", icon: Icon(Icons.more_horiz)),
    SettingsModel(settingName: "Log out", icon: Icon(Icons.power_settings_new)),
  ];
}
