import 'package:flutter/material.dart';

import '../../../extensions/extensions.dart';
import '../../../utils/methods.dart';
import '../../../utils/values.dart';

class Shade {
  final int variantID;
  final String color;
  Shade(this.variantID, this.color);
  Color get fromConfigs {
    final cm = gc?.getValue<Map<String, dynamic>>(
            '${color}_color_variant_$variantID') ??
        <String, dynamic>{};
    jot('----------------');
    jot(cm['color']);
    jot('________________');
    jot('---------------');
    jot(cm['alpha']);
    jot('________________');
    jot('----------------');
    jot(this);
    jot('________________');
    // jot(alpha);
    return cm['color'].toString().getColorFromHex(cm['alpha']);
  }

  @override
  String toString() => 'k${color.firstLetterCapitalized}$variantID';

  @override
  bool operator ==(Object other) =>
      other is Shade &&
      other.variantID == variantID &&
      other.color.lowerCased == color.lowerCased;

  @override
  // TODO: implement hashCode
  int get hashCode => variantID.hashCode + color.hashCode;
}
