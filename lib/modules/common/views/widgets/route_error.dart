import 'package:flutter/material.dart';

import 'circular_loader.dart';

class RouteError extends StatelessWidget {
  final String? content;
  final bool? flag1, flag2;
  const RouteError({super.key, this.flag1, this.content, this.flag2});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
                child: (flag1 ?? false)
                    ? const CircularLoader()
                    : Text(
                        (flag2 ?? true) ? (content ?? 'Route Error') : ''))));
  }
}
