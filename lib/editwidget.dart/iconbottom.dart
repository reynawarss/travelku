import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomPage {
  final IconData Home;
  final IconData favorite;
  final IconData Settings;
  final IconData account;

  BottomPage(this.Home, this.favorite, this.Settings, this.account);
}

List bottomPage = [
  Icons.home_rounded,
  Icons.favorite_rounded,
  Icons.settings_rounded,
  Icons.person_rounded,
  
];
