import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../states/counter_state.dart';
import '../../../../utils/values.dart';

class SampleScreen extends ConsumerWidget {
  const SampleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final CounterState cp = ref.read(counterProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: context.themeMaterial.colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: 'Riverpod Sample'.toText(),
      ),
      body: context.nonNullSize.constrainChild(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: <Widget>[
          'You have pushed the button this many times:'
              .toText()
              .wrapWithFlexible(),
          '${ref.watch(counterProvider)}'
              .toText(style: context.textTheme.headlineMedium)
              .wrapWithFlexible(),
          <Widget>[
            CustomButton(
              onPressed: cp.incrementCounter,
              child: 'Increment'.toText(),
            ).wrapWithFlexible(),
            CustomButton(
              onPressed: cp.decrementCounter,
              child: 'Decrement'.toText(),
            ).wrapWithFlexible(),
          ].placeWidgetsHorizontally().wrapWithExpanded(),
        ].placeWidgetsVertically(mainAxisAlignment: MainAxisAlignment.center),
      ),
    );
  }
}
