import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'riverpod_sample.dart';

void main() async {
  await 'config'.appInitialized()
      ? runApp(const ProviderScope(child: RiverpodSample()))
      : doNothing();
}
