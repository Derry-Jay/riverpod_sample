import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../css/css.dart';
import '../css/measurements.dart';
import '../css/shades.dart';
import '../modules/common/models/progress.dart';
import 'enums.dart';
import 'methods.dart';
import 'my_geocoder.dart';
import 'my_geolocator.dart';
import 'route_generator.dart';

int page = 0;

WidgetsBinding? wb;

bool hideText = true;

GlobalConfiguration? gc;

DateTime? currentBackPressTime;

StreamSubscription<Progress>? ssc;

Map<String, dynamic> body = <String, dynamic>{};

const apiMode =
    kDebugMode ? APIMode.dev : (kProfileMode ? APIMode.test : APIMode.prod);

final css = Css(),
    st = Stopwatch(),
    shades = Shades(),
    gco = MyGeocoder(),
    gl = MyGeolocator(),
    conn = Connectivity(),
    picker = ImagePicker(),
    today = DateTime.now(),
    isIOS = Platform.isIOS,
    fmd1 = DateFormat.MMMd(),
    isMac = Platform.isMacOS,
    dip = DeviceInfoPlugin(),
    isLinux = Platform.isLinux,
    thisMoment = TimeOfDay.now(),
    sc = TextEditingController(),
    tc = TextEditingController(),
    isCupertino = isIOS || isMac,
    measurements = Measurements(),
    phc = TextEditingController(),
    pwc = TextEditingController(),
    sdc = TextEditingController(),
    edc = TextEditingController(),
    isAndroid = Platform.isAndroid,
    isWindows = Platform.isWindows,
    isFuchsia = Platform.isFuchsia,
    rg = RouteGenerator(flag: true),
    isPortable = isAndroid || isIOS,
    sharedPrefs = SharedPreferences.getInstance(),
    prd = StateNotifierProvider.autoDispose(getCommonModule),
    assetImagePath = gc?.getValue<String>('asset_image_path') ?? '',
    isWeb = !(isAndroid || isCupertino || isWindows || isLinux || isFuchsia) &&
        kIsWeb,
    pwdExp =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$&*~]).{8,}$'),
    mailExp = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
