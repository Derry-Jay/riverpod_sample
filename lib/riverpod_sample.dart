import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';

import 'modules/common/views/screens/sample_screen.dart';
import 'utils/values.dart';

class RiverpodSample extends StatelessWidget {
  const RiverpodSample({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppRoot(
      title: 'Riverpod Sample',
      themeMaterial: css.themeNormal,
      home: const SampleScreen(),
    );
  }
}
