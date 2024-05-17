import 'dart:async';

import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import '../../../../utils/methods.dart';
import '../../extensions/extensions.dart';
import '../../utils/keys.dart';
import '../../utils/values.dart';
import 'models/progress.dart';

class CommonModule extends StateNotifier
    with AnimationLocalStatusListenersMixin {

  Animation<double>? animation;

  late BuildContext _buildContext;

  AnimationController? animationController;

  final _progressCon = StreamController<Progress>.broadcast();

  CommonModule(super.state);

  Stream<Progress> get progress => _progressCon.stream;

  BuildContext get context =>
      navKey.currentContext ??
      (wb?.buildOwner?.focusManager.rootScope.context ?? _buildContext);

  void addProgress(Progress p) {
    _progressCon.add(p);
  }

  void onProgress(int a, int b) async {
    ssc ??= progress.listen(onProgressData);
    jot('a: $a / b: $b');
    addProgress(Progress(a / b, '${((a * 100) / b).toStringAsFixed(2)}%'));
    if (a == b) {
      await ssc?.cancel();
      ssc = null;
    }
  }

  void onProgressData(Progress event) {
    jot(event);
  }

  void detectChange(AnimationStatus status) {
    switch (status) {
      case AnimationStatus.completed:
      case AnimationStatus.dismissed:
        animationController?.dispose();
        break;
      default:
        doNothing();
        break;
    }
  }

  void getData(Duration duration, TickerProvider tp) {
    animationController = AnimationController(duration: duration, vsync: tp);
    animation = Tween<double>(begin: context.pixelRatio, end: 0).animate(
        CurvedAnimation(parent: animationController!, curve: Curves.easeOut))
      // ..addListener(rebuild)
      ..addListener(goFrontIfMounted)
      ..addStatusListener(detectChange);
  }

  void goFrontIfMounted([double? from]) async {
    await animationController?.forward(from: from);
    // animationController?.notifyListeners();
    animationController?.notifyStatusListeners(AnimationStatus.forward);
  }

  // void rebuild() {
  //   notifyListeners();
  // }

  void assignState(TickerProvider tp) {
    wb?.addPostFrameCallback((Duration timeStamp) {
      getData(timeStamp, tp);
    });
  }

  void loaderDispose() {
    animationController?.dispose();
  }

  @override
  void didRegisterListener() {
    // TODO: implement didRegisterListener
    jot('object');
  }

  @override
  void didUnregisterListener() {
    // TODO: implement didUnregisterListener
    jot('object2');
  }
}
