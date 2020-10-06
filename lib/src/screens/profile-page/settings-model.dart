import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lak_app/src/screens/profile-page/favorites-page.dart';
import 'package:lak_app/src/screens/profile-page/my-membership-page.dart';
import 'package:lak_app/src/screens/profile-page/myads-page.dart';

class SettingsModel {
  final String settingName;
  final Icon icon;
  StatelessWidget nextPage;

  SettingsModel({this.settingName, this.icon, this.nextPage});

  static final List<SettingsModel> dummyData = [
    SettingsModel(
        settingName: "My ads",
        icon: Icon(Icons.card_membership),
        nextPage: MyAds()),
    SettingsModel(
        settingName: "My membership",
        icon: Icon(Icons.store_mall_directory),
        nextPage: MyMembership()),
    SettingsModel(
        settingName: "My Profile",
        icon: Icon(Icons.description),
        nextPage: MyAds()),
    SettingsModel(
        settingName: "Favorites",
        icon: Icon(Icons.favorite),
        nextPage: Favorites()),
    SettingsModel(
        settingName: "Stay safe",
        icon: Icon(Icons.location_on),
        nextPage: MyAds()),
    SettingsModel(
        settingName: "FAQ",
        icon: Icon(Icons.question_answer),
        nextPage: MyAds()),
    SettingsModel(
        settingName: "How to sell fast",
        icon: Icon(Icons.location_on),
        nextPage: MyAds()),
    SettingsModel(
        settingName: "Referrel", icon: Icon(Icons.share), nextPage: MyAds()),
    SettingsModel(
        settingName: "More", icon: Icon(Icons.more_horiz), nextPage: MyAds()),
    SettingsModel(
        settingName: "Log out",
        icon: Icon(Icons.power_settings_new),
        nextPage: MyAds()),
  ];
}
