import 'dart:async';
import 'dart:convert';
// import 'dart:io';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../extensions/extensions.dart';
import '../modules/common/common_module.dart';
// import 'values.dart';

void jot([Object? object, bool? flag, int? wrapWidth]) {
  if (kDebugMode) {
    (flag ?? false)
        ? debugPrint(object?.toString(), wrapWidth: wrapWidth)
        : print(object);
  }
}

void rollbackOrientations() async {
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

void lockScreenRotation() async {
  await SystemChrome.setPreferredOrientations([
    // DeviceOrientation.landscapeRight,
    // DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitUp,
  ]);
}

void showStatusBar() async {
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]);
}

// void executeAccToOS(
//     {VoidCallback? android,
//     VoidCallback? fuchsia,
//     VoidCallback? ios,
//     VoidCallback? linux,
//     VoidCallback? mac,
//     VoidCallback? windows,
//     VoidCallback? web}) async {
//   switch (defaultTargetPlatform) {
//     case TargetPlatform.android:
//       final dro = await dip.androidInfo;
//       jot(dro.id);
//       jot(dro.board);
//       jot(dro.bootloader);
//       jot(dro.brand);
//       jot(dro.device);
//       jot(dro.display);
//       jot(dro.fingerprint);
//       jot(dro.hardware);
//       jot(dro.host);
//       jot(dro.id);
//       jot(dro.manufacturer);
//       jot(dro.version);
//       jot(dro.type);
//       jot(dro.tags);
//       jot(dro.systemFeatures);
//       jot(dro.supported64BitAbis);
//       jot(dro.supported32BitAbis);
//       jot(dro.model);
//       jot(dro.product);
//       android?.call();
//       break;
//     case TargetPlatform.fuchsia:
//       fuchsia?.call();
//       break;
//     case TargetPlatform.iOS:
//       final ini = await dip.iosInfo;
//       jot(ini.identifierForVendor);
//       jot(ini.model);
//       jot(ini.localizedModel);
//       jot(ini.name);
//       jot(ini.systemName);
//       jot(ini.systemVersion);
//       jot(ini.utsname.machine);
//       jot(ini.utsname.nodename);
//       jot(ini.utsname.release);
//       jot(ini.utsname.sysname);
//       jot(ini.utsname.version);
//       ios?.call();
//       break;
//     case TargetPlatform.linux:
//       final li = await dip.linuxInfo;
//       jot(li.id);
//       jot(li.name);
//       jot(li.buildId);
//       jot(li.idLike);
//       jot(li.machineId);
//       jot(li.prettyName);
//       jot(li.variant);
//       jot(li.variantId);
//       jot(li.version);
//       jot(li.versionCodename);
//       jot(li.versionId);
//       jot(li.data);
//       linux?.call();
//       break;
//     case TargetPlatform.macOS:
//       final cam = await dip.macOsInfo;
//       jot(cam.activeCPUs);
//       jot(cam.arch);
//       jot(cam.computerName);
//       jot(cam.cpuFrequency);
//       jot(cam.hostName);
//       jot(cam.kernelVersion);
//       jot(cam.memorySize);
//       jot(cam.model);
//       jot(cam.osRelease);
//       jot(cam.systemGUID);
//       jot(cam.data);
//       mac?.call();
//       break;
//     case TargetPlatform.windows:
//       final win = await dip.windowsInfo;
//       jot(win.computerName);
//       jot(win.buildLab);
//       jot(win.buildLabEx);
//       jot(win.buildNumber);
//       jot(win.csdVersion);
//       jot(win.deviceId);
//       jot(win.digitalProductId);
//       jot(win.displayVersion);
//       jot(win.editionId);
//       jot(win.installDate);
//       jot(win.majorVersion);
//       jot(win.minorVersion);
//       jot(win.numberOfCores);
//       jot(win.platformId);
//       jot(win.productId);
//       jot(win.productName);
//       jot(win.productType);
//       jot(win.registeredOwner);
//       jot(win.releaseId);
//       jot(win.reserved);
//       jot(win.servicePackMajor);
//       jot(win.servicePackMinor);
//       jot(win.suitMask);
//       jot(win.systemMemoryInMegabytes);
//       jot(win.userName);
//       jot(win.data);
//       windows?.call();
//       break;
//     default:
//       web?.call();
//       break;
//   }
// }

// void hideLoader(Duration time, {LoaderType? type}) {
//   Timer(time, () {
//     try {
//       overlayLoader(time, type: type).remove();
//     } catch (e) {
//       jot(e);
//     }
//   }).cancel();
// }

void doNothing() {}

// OverlayEntry overlayLoader(Duration time, {LoaderType? type}) {
//   Widget loaderBuilder(BuildContext context) {
//     return Positioned(
//         top: 0,
//         left: 0,
//         width: context.width,
//         height: context.height,
//         child: Material(
//             color: context.theme.primaryColor.withOpacity(0.5),
//             child: CircularLoader(
//                 duration: time,
//                 loaderType: type,
//                 // heightFactor: 16,
//                 // widthFactor: 16,
//                 color: context.theme.primaryColor)));
//   }

//   return OverlayEntry(builder: loaderBuilder);
// }

bool predicate(Route<dynamic> route) {
  jot(route);
  return false;
}

Icon obtainStar(int index) {
  return index.filledStar;
}

Icon obtainStarOutline(int index) {
  return index.outlinedStar;
}

CommonModule getCommonModule(dynamic ref) {
  return CommonModule(ref);
}

bool isFirstRoute(Route route) {
  jot(route);
  return route.isFirst;
}

bool isActiveRoute(Route route) {
  jot(route);
  return route.isActive;
}

bool isCurrentRoute(Route route) {
  jot(route);
  return route.isCurrent;
}

bool predicate4(Route route) {
  jot(route);
  return route.hasActiveRouteBelow;
}

bool predicate5(Route route) {
  jot(route);
  return route.willHandlePopInternally;
}

double getDoubleData(Map<String, dynamic> data) {
  return (data['data'] as double);
}

bool getBoolData(Map<String, dynamic> data) {
  return (data['data'] as bool);
}

String getData(List<int> values) {
  return base64.encode(values);
}

Uint8List fromIntList(List<int> list) {
  return getData(list).listData;
}

Widget errorBuilder(BuildContext context, Object object, StackTrace? trace) {
  jot(object);
  jot(trace);
  return Icon(Icons.error,
      size: context.height / 16, color: context.theme.secondaryHeaderColor);
}

// Widget getPageLoader(Size size) {
//   return Image.asset('${assetImagePath}loading_trend.gif',
//       width: size.width, fit: BoxFit.fill, height: size.height);
// }

// Widget getPageLoader1(Size size) {
//   return Image.asset('${assetImagePath}loader1.gif',
//       width: size.width, fit: BoxFit.fill, height: size.height);
// }

// Widget getPlaceHolder(BuildContext context, String url) {
//   return Image.asset('${assetImagePath}loading.gif',
//       height: context.height / 12.8,
//       width: context.width / 6.4,
//       fit: BoxFit.fill);
// }

// Widget getPlaceHolderNoImage(BuildContext context, String url) {
//   return Image.asset('${assetImagePath}noImage.png',
//       height: context.height / 12.8,
//       width: context.width / 6.4,
//       fit: BoxFit.fill);
// }

// Widget getErrorWidgetNoImage(
//     BuildContext context, Object object, StackTrace? trace) {
//   jot(object);
//   jot(trace);
//   return const Visibility(visible: false, child: EmptyWidget());
// }

// Widget getErrorWidget(BuildContext context, String url, dynamic error) {
//   return Image.asset('${assetImagePath}noImage.png',
//       height: context.height / 12.8,
//       width: context.width / 6.4,
//       fit: BoxFit.fill);
// }

// Widget getProductBuilder(BuildContext context, int index) {
//   return;
// }

Future<Uint8List> getBytesFromAsset(String path,
    {int? width, int? height}) async {
  final data = await rootBundle.load(path);
  final codec = await instantiateImageCodec(data.buffer.asUint8List(),
      targetWidth: width,
      targetHeight: height);
  final fi = await codec.getNextFrame();
  return (await fi.image.toByteData(format: ImageByteFormat.png))!
      .buffer
      .asUint8List();
}

// Future<List<String>> getLocalStorageKeys() async {
//   final prefs = await sharedPrefs;
//   return prefs.getKeys().toList();
// }
