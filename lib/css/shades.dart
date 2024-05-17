import 'package:flutter/material.dart';

import '../modules/common/models/shade.dart';

class Shades {
  static final Shades _singleton = Shades._internal();

  factory Shades() => _singleton;

  Shades._internal();

  final kGrey = Colors.grey, kGrey1 = Shade(1, 'grey').fromConfigs;

  final kGold1 = Shade(1, 'gold').fromConfigs;
}
