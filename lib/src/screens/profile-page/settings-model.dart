import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lak_app/src/screens/profile-page/favorites-page.dart';
import 'package:lak_app/src/screens/profile-page/my-membership-page.dart';
import 'package:lak_app/src/screens/profile-page/my-profile-page.dart';
import 'package:lak_app/src/screens/profile-page/myads-page.dart';

class SettingsModel {
  final String settingName;
  final Icon icon;
  StatefulWidget nextPage;

  SettingsModel({this.settingName, this.icon, this.nextPage});

  static final List<SettingsModel> dummyData = [
    SettingsModel(
        settingName: "My ads",
        icon: Icon(Icons.card_membership),
        nextPage: MyAdsScreen()),
    SettingsModel(
        settingName: "My membership",
        icon: Icon(Icons.store_mall_directory),
        nextPage: MyMembershipScreen()),
    SettingsModel(
        settingName: "My Profile",
        icon: Icon(Icons.description),
        nextPage: MyPersonalProfileScreen()),
    SettingsModel(
        settingName: "Favorites",
        icon: Icon(Icons.favorite),
        nextPage: FavoritesScreen()),
    SettingsModel(
        settingName: "Stay safe",
        icon: Icon(Icons.location_on),
        nextPage: MyAdsScreen()),
    SettingsModel(
        settingName: "FAQ",
        icon: Icon(Icons.question_answer),
        nextPage: MyAdsScreen()),
    SettingsModel(
        settingName: "How to sell fast",
        icon: Icon(Icons.location_on),
        nextPage: MyAdsScreen()),
    SettingsModel(
        settingName: "Referrel",
        icon: Icon(Icons.share),
        nextPage: MyAdsScreen()),
    SettingsModel(
        settingName: "More",
        icon: Icon(Icons.more_horiz),
        nextPage: MyAdsScreen()),
    SettingsModel(
        settingName: "Log out",
        icon: Icon(Icons.power_settings_new),
        nextPage: MyAdsScreen()),
  ];
}
