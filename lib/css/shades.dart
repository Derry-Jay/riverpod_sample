import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';

class Shades {
  static final Shades _singleton = Shades._internal();

  factory Shades() => _singleton;

  Shades._internal();

  final kGrey = Colors.grey,
      kGrey1 = Shade(1, 'grey').fromConfigs,
      kGold1 = Shade(1, 'gold').fromConfigs;
}
